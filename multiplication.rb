def multiply(*terms)
	flag_all_numeric = false
	flag_all_strings = false
	terms.each do |num|
		if num.class <= Numeric
			flag_all_numeric = true
		else
			flag_all_numeric = false
			break
		end
	end

	terms.each do |my_string|
		if my_string.class == String
			flag_all_strings = true
		else
			flag_all_strings = false
			break
		end
	end

	if flag_all_numeric == true
		total = 1
		terms.each do |num|
			total *= num
		end
		return total
	else
		return "Error"
	end

end