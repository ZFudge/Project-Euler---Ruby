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
		if isPrime(n)
			$bigPrime = n
		end
	end
end
puts $bigPrime