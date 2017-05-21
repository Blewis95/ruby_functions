def add(*terms)
	all_nums = false
	all_strings = false
	terms.each do |num|
		if num.class <= Numeric
			all_nums = true
		else
			all_nums = false
			break
		end
	end

	terms.each do |my_string|
		if my_string.class == String
			all_strings = true
		else
			all_strings = false
			break
		end
	end

	if all_nums == true
		sum = 0
		terms.each do |num|
			sum += num
		end
		return sum
	elsif all_strings == true
		concat_string = ""
		terms.each do |s|
			concat_string += s
		end
		return concat_string
	else
		return "Error"
	end

end