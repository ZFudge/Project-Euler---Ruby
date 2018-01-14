simpleSum = 0
squareSum = 0
for n in 1..100
	simpleSum += n
	squareSum += n**2
end
puts simpleSum ** 2 - squareSum