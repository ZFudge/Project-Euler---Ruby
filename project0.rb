$sum = 0
for n in (0..999)
		$sum += n unless n % 3 != 0 && n % 5 != 0
end
puts $sum