#lang racket
(provide eval-while parse-while env-empty env-lookup)
; Do programming.rkt dodajemy instrukcje

; --------- ;
; Wyrazenia ;
; --------- ;

(struct const       (val)      #:transparent)
(struct binop       (op l r)   #:transparent)
(struct var-expr    (id)       #:transparent)
(struct let-expr    (id e1 e2) #:transparent)
(struct letrec-expr (id e1 e2) #:transparent)
(struct if-expr     (eb et ef) #:transparent)
(struct cons-expr   (e1 e2)    #:transparent)
(struct car-expr    (e)        #:transparent)
(struct cdr-expr    (e)        #:transparent)
(struct null-expr   ()         #:transparent)
(struct null?-expr  (e)        #:transparent)
(struct app         (f e)      #:transparent)
(struct lam         (id e)     #:transparent)

(define (expr? e)
  (match e
    [(const n) (or (number? n) (boolean? n) (string? n))]
    [(binop op l r) (and (symbol? op) (expr? l) (expr? r))]
    [(var-expr x) (symbol? x)]
    [(let-expr x e1 e2)
     (and (symbol? x) (expr? e1) (expr? e2))]
    [(letrec-expr x e1 e2)
     (and (symbol? x) (expr? e1) (expr? e2))]
    [(if-expr eb et ef)
     (and (expr? eb) (expr? et) (expr? ef))]
    [(cons-expr e1 e2) (and (expr? e1) (expr? e2))]
    [(car-expr e) (expr? e)]
    [(cdr-expr e) (expr? e)]
    [(null-expr) true]
    [(null?-expr e) (expr? e)]
    [(app f e) (and (expr? f) (expr? e))]
    [(lam id e) (and (symbol? id) (expr? e))]
    [_ false]))

(define (parse q)
  (cond
    [(number? q) (const q)]
    [(eq? q 'true)  (const true)]
    [(eq? q 'false) (const false)]
    [(eq? q 'null)  (null-expr)]
    [(string? q) (const q)]
    [(symbol? q) (var-expr q)]
    [(and (list? q) (eq? (length q) 2) (eq? (first q) 'null?))
     (null?-expr (parse (second q)))]
    [(and (list? q) (eq? (length q) 3) (eq? (first q) 'cons))
     (cons-expr (parse (second q))
                (parse (third q)))]
    [(and (list? q) (eq? (length q) 2) (eq? (first q) 'car))
     (car-expr (parse (second q)))]
    [(and (list? q) (eq? (length q) 2) (eq? (first q) 'cdr))
     (cdr-expr (parse (second q)))]
    [(and (list? q) (eq? (length q) 3) (eq? (first q) 'let))
     (let-expr (first (second q))
               (parse (second (second q)))
               (parse (third q)))]
    [(and (list? q) (eq? (length q) 3) (eq? (first q) 'letrec))
     (letrec-expr (first (second q))
                  (parse (second (second q)))
                  (parse (third q)))]
    [(and (list? q) (eq? (length q) 4) (eq? (first q) 'if))
     (if-expr (parse (second q))
              (parse (third q))
              (parse (fourth q)))]
    [(and (list? q) (eq? (length q) 3) (eq? (first q) 'lambda))
     (parse-lam (second q) (third q))]
    [(and (list? q) (pair? q) (not (op->proc (car q))))
     (parse-app q)]
    [(and (list? q) (eq? (length q) 3) (symbol? (first q)))
     (binop (first q)
            (parse (second q))
            (parse (third q)))]))

(define (parse-app q)
  (define (parse-app-accum q acc)
    (cond [(= 1 (length q)) (app acc (parse (car q)))]
          [else (parse-app-accum (cdr q) (app acc (parse (car q))))]))
  (parse-app-accum (cdr q) (parse (car q))))

(define (parse-lam pat e)
  (cond [(= 1 (length pat))
         (lam (car pat) (parse e))]
        [else
         (lam (car pat) (parse-lam (cdr pat) e))]))

; ---------- ;
; Srodowiska ;
; ---------- ;

(struct blackhole () #:transparent)
(struct environ (xs) #:transparent)

(define env-empty (environ null))
(define env-global env-empty)
(define (env-add x v env)
  (environ (cons (mcons x v) (environ-xs env))))
(define (env-lookup x env)
  (define (assoc-lookup xs)
    (cond [(null? xs) (error "Unknown identifier" x)]
          [(eq? x (mcar (car xs)))
             (match (mcdr (car xs))
               [(blackhole) (error "Stuck forever in a black hole!")]
               [x x])]
          [else (assoc-lookup (cdr xs))]))
  (assoc-lookup (environ-xs env)))
(define (env-update! x v xs)
  (define (assoc-update! xs)
    (cond [(null? xs) (error "Unknown identifier" x)]
          [(eq? x (mcar (car xs))) (set-mcdr! (car xs) v)]
          [else (env-update! x v (cdr xs))]))
  (assoc-update! (environ-xs xs)))
(define (env-update x v xs) ; <---------------------------------- !!!
  (define (assoc-update ls)
    (cond [(null? ls) (environ-xs (env-add x v xs))]
          [(eq? x (mcar (car ls)))
           (begin
             (set-mcdr! (car ls) v) (environ-xs xs))]
          [else (assoc-update (cdr ls))]))
  (environ (assoc-update (environ-xs xs))))
(define (env-merge env genv)
  (environ (append (environ-xs env) (environ-xs genv))))

; --------- ;
; Ewaluacja ;
; --------- ;

(struct clo (id e env) #:transparent)

(define (value? v)
  (or (number? v)
      (boolean? v)
      (string? v)
      (and (pair? v) (value? (car v)) (value? (cdr v)))
      (null? v)
      (clo? v)
      (blackhole? v)))

(define (op->proc op)
  (match op ['+ +] ['- -] ['* *] ['/ /] ['% modulo]
            ['= =] ['> >] ['>= >=] ['< <] ['<= <=]
            ['and (lambda (x y) (and x y))]
            ['or  (lambda (x y) (or  x y))]
            ['eq? eq?]
            [_ false]))

(define (eval-env e env genv)
  (match e
    [(const n) n]
    [(binop op l r) ((op->proc op) (eval-env l env genv)
                                   (eval-env r env genv))]
    [(let-expr x e1 e2)
     (eval-env e2 (env-add x (eval-env e1 env genv) env) genv)]
    [(letrec-expr x e1 e2)
     (let* ([new-env (env-add x (blackhole) env)]
            [v (eval-env e1 new-env genv)])
       (begin
          (env-update! x v new-env)
          (eval-env e2 new-env genv)))]
    [(var-expr x) (env-lookup x (env-merge env genv))]
    [(if-expr eb et ef) (if (eval-env eb env genv)
                            (eval-env et env genv)
                            (eval-env ef env genv))]
    [(cons-expr e1 e2) (cons (eval-env e1 env genv)
                             (eval-env e2 env genv))]
    [(car-expr e) (car (eval-env e env genv))]
    [(cdr-expr e) (cdr (eval-env e env genv))]
    [(null-expr) null]
    [(null?-expr e) (null? (eval-env e env genv))]
    [(lam x e) (clo x e env)]
    [(app f e)
     (let ([vf (eval-env f env genv)]
           [ve (eval-env e env genv)])
       (match vf [(clo x body fun-env)
                  (eval-env body (env-add x ve fun-env) genv)]))]))

(define (eval e) (eval-env e env-empty env-empty))

; ---------------------------------------------------------------- !!!

(struct skip   ()         #:transparent)
(struct assign (x e)      #:transparent)
(struct if-cmd (eb ct cf) #:transparent)
(struct while  (eb cb)    #:transparent)
(struct comp   (c1 c2)    #:transparent)

(define (cmd? c)
  (match c
    [(skip) true]
    [(assign x e) (and (symbol? x) (expr? e))]
    [(if-cmd eb ct cf) (and (expr? eb) (cmd? ct) (cmd? cf))]
    [(while eb ct) (and (expr? eb) (cmd? ct))]
    [else false]))

(define (parse-while q)
  (cond
    [(eq? q 'skip) (skip)]
    [(null? q) (skip)]
    [(and (list? q) (= (length q) 3) (eq? (second q) ':=))
     (assign (first q)
             (parse (third q)))]
    [(and (list? q) (= (length q) 4) (eq? (car q) 'if))
     (if-cmd (parse (second q))
             (parse-while (third q))
             (parse-while (fourth q)))]
     [(and (list? q) (= (length q) 3) (eq? (car q) 'while))
      (while (parse (second q))
             (parse-while (third q)))]
     [(and (list? q) (= (length q) 2))
      (comp (parse-while (first q))
            (parse-while (second q)))]
     [(and (list? q) (> (length q) 2))
      (comp (parse-while (first q))
            (parse-while (cdr q)))]
     [else (error "while parse error")]))

(define (eval-while e env)
  (match e
    [(skip) env]
    [(assign x e)
     (env-update x (eval-env e env-empty env) env)]
    [(if-cmd eb ct cf)
     (if (eval-env eb env-empty env)
         (eval-while ct env)
         (eval-while cf env))]
    [(while eb cb)
     (if (eval-env eb env-empty env)
         (eval-while e (eval-while cb env))
         env)]
     [(comp c1 c2) (eval-while c2 (eval-while c1 env))]))

; zakladamy, ze program startuje z pamiecia w ktorej
; aktwna jest zmienna t
(define WHILE_FACT
  '{(i := 1)
    (while (> t 0)
      {(i := (* i t))
       (t := (- t 1))})})

(define (fact n)
  (let* ([init-env  (env-add 't n env-empty)]
         [final-env
           (eval-while (parse-while WHILE_FACT) init-env)])
    (env-lookup 'i final-env)))


;-----------------------------


(define WHILE_1
  '{(x := 5)
    (f := (lambda (y) (+ x y)))
    (x := 10)
    (z := (f 0))})
(define WHILE_2
  '{(x := 5)
    (f := (let [x 50] (lambda (y) (+ x y))))
    (x := 10)
    (z := (f 0))})
(define WHILE_3
  '{(x := 5)
    (f := (let [x 50]
          (let [foo (lambda (y) (+ x y))]
          (let [x 100]
          foo))))
    (x := 10)
    (z := (f 0))})
(define WHILE_4
  '{(x := 5)
    (f := (let [x x] (lambda (y) (+ x y))))
    (x := 10)
    (z := (f 0))})
(define WHILE_5
  '{(x := 5)
    (f := (lambda (y)
            (if (= x 5)
                2
                3)))
    (x := 10)
    (z := (f 0))})

(define (test while)
  (env-lookup 'z (eval-while (parse-while while) env-empty)))

