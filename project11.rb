# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# Let us list the factors of the first seven triangle numbers:
#     1: 1
#     3: 1,3
#     6: 1,2,3,6
#    10: 1,2,5,10
#    15: 1,3,5,15
#    21: 1,3,7,21
#    28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
# What is the value of the first triangle number to have over five hundred divisors?

$steps = 0
$tri = 0
largestDiv = 0

def triangle()
	$tri += $steps
end

def divisors(num) 
	divs = 3
	for n in 2..(num**0.5)
		if num % n == 0 then divs += 2 end
	end
	return divs
end

until largestDiv > 500
	$steps += 1
	triangle()
	divAmt = divisors($tri)
	if divAmt > largestDiv then	largestDiv = divAmt end
end

puts "The first triangle number is have over 500 divisors is #{$tri}"
puts "It has #{largestDiv} divisors."