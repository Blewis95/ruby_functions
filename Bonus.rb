require_relative "winning_numbers.rb"

def winning_array(num,array)
	string1 = num.to_s

	if num.class != Fixnum 
		return "Error, 1st entry must be a Fixed number"
	elsif array.class != Array
		return "Error, 2nd entry must be an Array of numbers"
	else
		array.each do |x|
		
			element = x

			if (x.class != Fixnum)
				return "Error, array entries must be Fixed 4 digit numbers"
			elsif ((element % 1000) != x ) || (string1.length != 4)
				return "Error, entries must be 4 digits"
			else
				#code to make it work
			end
		end
	end
end