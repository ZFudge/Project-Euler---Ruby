$results = 0
def fib(n1,n2)
	$results += n2 unless n2 % 2 != 0
	fib(n2, n1 + n2) unless n1 > 4000000 or n2 > 4000000
end
fib(1,2)
puts $results