# The Fibonacci sequence is defined by the recurrence relation:
#    Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:
#    F1 = 1, F2 = 1, F3 = 2, F4 = 3, F5 = 5, F6 = 8, F7 = 13, F8 = 21, F9 = 34, F10 = 55, F11 = 89, F12 = 144
# The 12th term, F12, is the first term to contain three digits.
# What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

$x = 1
$y = 1

$fibCount = 2 	# $x and $y variables are equivalent to F1 and F2 terms in fibonacci sequence

def fib()
	$fibCount+=1
	$y += $x
	$x = $y - $x
end

until $y.to_s.length >= 1000
	fib()
end

puts "First fibonacci number over 1000 digits long: #{$y}"
puts "Index of this number: #{$fibCount}"