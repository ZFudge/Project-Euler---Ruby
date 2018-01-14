# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

$num = 600851475143
$bigPrime = 0

def isPrime(number) 
	for n in (2..(number**0.5))
		return false unless number % n != 0
	end
	return true;
end

for n in (100..($num**0.5))
	if $num % n == 0
		if isPrime(n) then $bigPrime = n end
	end
end

puts "The largest prime factor of 600851475143 is #{$bigPrime}"