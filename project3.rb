#  A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def isPalin(num)
	str = num.to_s
	rev = []
	len = str.length - 1
	while len >= 0
		rev.push(str[len])
		len-=1
	end
	return str == rev.join("")
end
largestProduct = 0
999.downto(100) { |i| 
	999.downto(100) { |j| 
		prod = i * j
		if isPalin(prod) && largestProduct < prod
			largestProduct = prod
			break;
		end
	}	
}
puts largestProduct