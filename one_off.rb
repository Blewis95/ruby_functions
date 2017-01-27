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

	#puts array1
	#puts array2

	if string1.length == string2.length

		holder = 0

		for i in 0..3

			holder = array1[i]
			if holder == array2[i]
				t_or_f = true

			elsif array2[i] == ((holder - 1) || (holder + 1))
				t_or_f = true

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