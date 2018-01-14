# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10,001st prime number?

def isPrime(num)
	for n in 2..(num**0.5)
		if num % n == 0 then return false end
	end
	return true
end

primeCount = 0
step = 1

until primeCount == 10001
	step += 1
	if isPrime(step) then primeCount+=1 end
end

puts "The 10,000st prime number is #{step}"