def divide(*numbers)

	flag_all_numeric = false
	flag_all_strings = false
	numbers.each do |num|
		if num.class <= Numeric
			flag_all_numeric = true
		else
			flag_all_numeric = false
			break
		end
	end

	numbers.each do |my_string|
		if my_string.class == String
			flag_all_strings = true
		else
			flag_all_strings = false
			break
		end
	end

	if flag_all_numeric == true
		quotient = numbers[0]
		numbers.each do |num|
			if quotient != num
				quotient /= num
			end
		end
		return quotient
	
	else
		
		return "Error"
	end

end