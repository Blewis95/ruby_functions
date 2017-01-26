def winning_numbers(num,array)

	error_num = "Error first number must be a numeric"

	if num.class != Numeric
		return error_num
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
	return answer
end
end

