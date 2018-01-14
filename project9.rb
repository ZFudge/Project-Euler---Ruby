# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

primeSum = 0

def isPrime(num)
	for n in 2..(num**0.5)
		if num % n == 0 then return false end
	end
	return true
end

for n in 2..2000000
	if isPrime(n) then primeSum += n end
end

puts "The sum of all prime numbers below two million is: #{primeSum}"