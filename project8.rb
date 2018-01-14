# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pythagorean()
	for a in 1..1000
		for b in 1..1000
			c = 1000 - a - b
			if a*a + b*b == c*c then return a * b * c end
		end
	end
end

puts "The product of the only pythagorean triplet whose sum of abc values equals 1000 is: \n#{pythagorean()}"