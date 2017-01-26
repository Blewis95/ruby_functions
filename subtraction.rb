def subtract(*nums)
	if nums.length <= 1
		return "Error"
	end

	flag_all_numeric = false
	
	nums.each do |num|
		if num.class <= Numeric
			flag_all_numeric = true
		else
			return "Error"
		end
	end

	if flag_all_numeric == true
		index = 0
		difference = 0
		nums.each do |num|
			if index == 0
				difference = num
			else
				difference = difference - num
			end
			index += 1
		end
		return difference

	else
		return "Error"
	end

end