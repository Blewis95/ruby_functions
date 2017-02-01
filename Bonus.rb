require_relative "winning_numbers.rb"

def winning_array(num,array)
	string1 = num.to_s
	possible_winning_numbers = Array.new
	final_array = Array.new

	if num.class != Fixnum 
		return "Error, 1st entry must be a Fixed number"
	elsif array.class != Array
		return "Error, 2nd entry must be an Array of numbers"
	else
		array.each do |x|
		
			element = x

			if (x.class != Fixnum)
				return "Error, array entries must be Fixed 4 digit numbers"
			elsif ((element % 10000) != x ) || (string1.length != 4)
				return "Error, entries must be 4 digits"
			end
		end

		

		possible_winning_numbers.push(num)

		for i in 0..3
			possible_winning_numbers.push(num - 10**i)
			possible_winning_numbers.push(num + 10**i)
		end

		for i in 0..(possible_winning_numbers.length - 1)
			if possible_winning_numbers[i] < 1000
				holder = possible_winning_numbers[i]
				possible_winning_numbers[i] = '0' + holder.to_s
			else
				holder = possible_winning_numbers[i]
				possible_winning_numbers[i] = holder.to_s
			end

		end


		#should be used after finding the matching numbers
		array_length = array.length
		array_length.times do |x|
			array[x] = array[x].to_s
		end

		for i in 0..(array.length - 1)
			if (possible_winning_numbers.include?(array[i]))
				final_array.push(array[i])
			end
		end
		

		#puts possible_winning_numbers
		#puts final_array

		return final_array
	end
end