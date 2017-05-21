def one_off(string1,string2)
	num1 = string1.to_i
	num2 = string2.to_i

	array1 = Array.new
	array2 = Array.new

	t_or_f = false

	for i in 0..string1.length
		array1.unshift(num1 % 10)
		num1 = num1 / 10
	end

	for i in 0..string2.length
		array2.unshift(num2 % 10)
		num2 = num2 / 10
	end

	# print array1
	# print array2

	if string1.length == string2.length

		length = string1.length
		counter = 0

			for i in 0..(length + 1)


				holder1 = array1[i]
				holder2 = array2[i]

				
				if holder1 == holder2
					t_or_f = true
				elsif (holder1 == (holder2 - 1)) || (holder1 == (holder2 + 1))
					t_or_f = true
					counter += 1
				elsif counter > 2
					t_or_f = false
					break
				else
					t_or_f = false
					break
				end
			end	

	elsif (string1.length == 0 || string2.length == 0)
		return "Error missing argument"
	
	else
		return "Error"

		

	end
return t_or_f
end