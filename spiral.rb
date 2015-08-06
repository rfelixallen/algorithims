# The main idea is to start in the center and then go counter clockwise around the middle.
# there will be some x value that goes up by 1, and flipflops between positive and negative.
# so first it will go a[1] += x, a[0] += x, x += 1, a[1] += -x, a[0] += -x, etc

def spiral(n) # n is the max dimensions. ex n = 5, this is a 5x5 square.
	a = [0,0]
	x = 1 # X is how many steps to go
	#t = 1 # T is how many times X

	# Round 1 - Positive!
	x.times do
		a[1] += 1
		puts a # [0,1]
	end

	x.times do
		a[0] += 1
		puts a # [1,1]
	end
	
	x += 1
	
	# Round 2 - Negative!
	x.times do
		a[1] -= 1
		puts a #[1,0],[1,-1]
	end

	x.times do
		a[0] -= 1
		puts a # [0,-1],[-1,-1]
	end

	x += 1

	# Round 3 .. etc
end