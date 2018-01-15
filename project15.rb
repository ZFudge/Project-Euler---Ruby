# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?

digits = (2**1000).to_s

sum = 0

digits.split("").each { |n| sum += n.to_i }

puts "The sum of the digits of the number 2^1000 is #{sum}"