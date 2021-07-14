from random import choices

class Card:

	val = {
		"2": 2,		"3": 3,		"4": 4,		"5": 5,		"6": 6,
		"7": 7,		"8": 8,		"9": 9,		"10": 10,	"J": 11,
		"Q": 12, 	"K": 13,	"A": 14
	}
	
	def __init__(self, color, card):
		self.color = color
		self.card = card
	def __str__(self):
		return "[" + self.color + self.card + "]"
	def __gt__(self, other):
		return self.val[self.card] > self.val[other.card]
	def __int__(self):
		return self.val[self.card]

class Deck:

	val = {
		"highcard": 1,	"1pair": 2,	"2pair": 3, "3kind": 4,
		"straight": 5,	"flush": 6,	"full": 7,	"4kind": 8,	"straightflush": 9
	}

	def __init__(self, cards_str):
		self.hand = []
		self.deck = []

		co = ""; ca = ""
		for char in cards_str:
			if char in ["a", "b", "c", "d"]: #colors
				if co:
					self.deck.append(Card(co, ca))
				co = char; ca = ""
			else:
				ca += char

	def isMonochromatic(self):
		return all([c.color == self.hand[0].color for c in self.hand])

	def isOrdered(self):
		self.hand = sorted(self.hand, key=lambda x: int(x))
		ok = True
		for i in range(len(self.hand)-1):
			if int(self.hand[i+1]) - int(self.hand[i]) != 1:
				ok = False
		return ok
	
	def cproperties(self):
		ordered = self.isOrdered()
		monochromatic = self.isMonochromatic()

		if ordered and monochromatic:
			return "straightflush"
		elif monochromatic:
			return "flush"
		elif ordered:
			return "straight"
		else:
			return "highcard"

	def cmultiples(self):
		h = self.hand.copy()
		d = dict()
		while len(h) > 0:
			c = h.pop().card
			if c in d:
				d[c] += 1
			else:
				d[c] = 1
			
		d = list(d.values())
		if max(d) > 3:
			return "4kind"
		elif 2 in d and 3 in d:
			return "full"
		elif 3 in d:
			return "3kind"
		elif 2 in d:
			return str(d.count(2)) + "pair"
		else:
			return "highcard"
	
	def evaluate(self):
		return max([self.val[x] for x in [self.cproperties(), self.cmultiples()]])

	def drop(self, c):
		self.deck.remove(c)
		return self

	def copy(self):
		d = Deck([])
		d.deck = self.deck.copy()
		return d

	def __str__(self):
		strr = "("
		for c in self.deck:
			strr += str(c)
		return strr + ")"

	def draw(self):
		self.hand = choices(self.deck, k=5)
		return self




Figurant = Deck("".join([co + ca for co in ["a", "b", "c", "d"] for ca in ["J", "Q", "K", "A"]]))
def probability(B):

	def roll():
		return B.draw().evaluate() > Figurant.draw().evaluate()

	Bwins = 0; rolls = 1000
	for i in range(rolls):
		Bwins += roll()
	return Bwins/rolls


def DFS():

	res = (0, Deck([]))
	def search(p, dck):
		nonlocal res
		

		prob = probability(dck)
		
		if prob < p:
			return
		elif len(dck.deck) <= len(res[1].deck):
			return
		elif prob > 0.5:
			res = (prob, dck)
			print(prob, dck)
		
		for c in dck.deck:
			ndck = dck.copy().drop(c)
			search(prob, ndck)
	
	Blotkarz = Deck("".join([co + ca for co in ["a", "b", "c", "d"] for ca in [str(n) for n in range(2,11)]]))
	search(0, Blotkarz)

	print(res[0], res[1])

#DFS()
D = Deck("".join(["a7", "a9", "a10", "b3", "b7", "b9", "b10", "c7", "c8", "c9", "c10", "d7", "d9", "d10"]))
print(probability(D))



