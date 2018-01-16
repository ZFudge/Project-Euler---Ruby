# The following iterative sequence is defined for the set of positive integers:
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?

def collatz(num,count=0)
	if num != 1 
		num % 2 == 0 ? collatz(num/2,count+1) : collatz(num*3+1,count+1)
	else
		return count
	end
end

largestCollatz = [0,0]

for n in 100..1000000
	col = collatz(n)
	if col > largestCollatz[0]
		largestCollatz[0] = col
		largestCollatz[1] = n
	end
end

puts "The longest collatz sequence made from a startign number under one million is #{largestCollatz[0]} steps long. The starting number is #{largestCollatz[1]}"