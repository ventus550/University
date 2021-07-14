



class State:
	def __init__(self, dct):
		self.content = dct
	
	def __str__(self):
		return "<" + str(self.content["whiteK"]) + str(self.content["whiteT"]) + str(self.content["blackK"]) + ">"
	
	def __getitem__(self, key):
		return self.content[key]
	def __setitem__(self, key, item):
		self.content[key] = item
	def __eq__(self, value):
		return self.content == value
	def copy(self):
		return State(self.content.copy())

state1 = State({"whiteK": [2, 3], "whiteT": [2, 7], "blackK": [7, 2]})
state2 = State({"whiteK": [2, 4], "whiteT": [5, 4], "blackK": [4, 5]})
states = [state1, state2]

def sprint(seq):
	strr = ""
	for s in seq:
		strr += str(s) + "\n"
	print("__________"+ str(len(seq)) +"___________\n" + strr + "______________________")

#----------------------------
MEMORY = {}
moves_limit = 0
winnig_sequence = []

def dist(p1, p2):
	return ((p1[0]-p2[0])**2 + (p1[1]-p2[1])**2)**0.5

#0 - white, 1 - black
def move(player, seq = []):
	global MEMORY
	global moves_limit

	if len(seq) > moves_limit:
		MEMORY[str(seq[-1])] = seq
		return False

	if player == 0:
		moveTower(0, seq)
		moveKing(0, seq)
	else:
		moveKing(1, seq)


	

	

def moveTower(player, seq):
	
	#its not worth it to move the tower while the kings are apart
	if dist(seq[-1]["whiteK"], seq[-1]["blackK"]) > 2:
		return False

	def tower(i, axis):
		nstate = seq[-1].copy()

		#tower cant be idle
		if i == nstate["whiteT"][axis]:
			return False


		nstate["whiteT"] = nstate["whiteT"].copy()

		def is_pathable(figure):
			figure = nstate[figure]

			if figure[not axis] != nstate["whiteT"][not axis]:
				return True

			b = nstate["whiteT"][axis]; e = i
			if b > e:
				b, e = e, b
			if b <= figure[axis] and figure[axis] <= e:
				return False
			return True


		if is_pathable("whiteK") and is_pathable("blackK"):
			nstate["whiteT"][axis] = i
			move((player+1) % 2, seq + [nstate] + 1)

	for i in range(0,8):
		tower(i, 0)
		tower(i, 1)
		



def moveKing(player, seq):
	global winnig_sequence
	global moves_limit

	nstate = seq[-1].copy()
	
	king = "whiteK"
	if player == 1:
		king = "blackK"

	def is_pathable(state):
		p = state[king]

		#check if zone exists
		if p[0] < 0 or p[0] > 7 or p[1] < 0 or p[1] > 7:
			return False
		
		#check collision with the other king	
		if dist(state["whiteK"], state["blackK"]) < 2:
			return False

		#check collision with tower
		if king == "blackK":
			if p[0] == state["whiteT"][0] or p[1] == state["whiteT"][1]:
				return False
		else:
			if state["whiteT"] == p:
				return False
		return True

	king_pos = nstate[king]
	not_checkmate = False
	directions = [-1, 0, 1]
	for i in directions:
		for j in directions:
			if i == 0 and j == 0:
				continue

			nstate[king] = [ king_pos[0] + i, king_pos[1] + j ]



			#print("NEW", nstate, seq)
			if is_pathable(nstate):
				not_checkmate = True
				move((player+1) % 2, seq + [nstate])

	if not not_checkmate and len(seq) < moves_limit:
		if dist(nstate["blackK"], nstate["whiteT"]) < 2 and dist(nstate["whiteK"], nstate["whiteT"]) > 2:			
			return False
		
		print("----------------------------------------------------------\n")
		sprint(seq)
		winnig_sequence = seq
		moves_limit = len(seq)


move(1, [state1])
while not winnig_sequence and moves_limit < 9:
	
	moves_limit += 1
	states, MEMORY = MEMORY, {}
	#print(moves_limit)

	#sprint(states)
	for state in states.values():
		#if state == State({'whiteK': [4, 2], 'whiteT': [2, 0], 'blackK': [4, 0]}):
		#sprint(state)
		move((moves_limit % 2)+1, state)



