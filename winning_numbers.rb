def winning_numbers(num,array)

	error_num = "Error first entry must be a numeric"
	error_array = "Error second entry must be an array"
	empty = "Error, 1 or more arguments missing"

	if num.class != (Fixnum || Float)
		return error_num

	elsif array.class != Array
		return error_array
	
	else
		answer = false

		array.each do |counter|
			if counter == num
				answer = true
				break
			else

			answer = false

		end
	end

	

	end
	return answer
end

