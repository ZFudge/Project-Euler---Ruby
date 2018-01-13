def detDiv(num)
	return num % 20 == 0 && num % 19 == 0 && num % 18 == 0 && num % 17 == 0 && num % 16 == 0 && num % 15 == 0 && num % 14 == 0 && num % 13 == 0 && num % 12 == 0 && num % 11 == 0
end
unanswered = true
num = 100
while unanswered
	if detDiv(num)
		unanswered = false;
		puts num
	end
	num += 1
end