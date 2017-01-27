require "minitest/autorun"
require_relative "Bonus.rb" 

class TestBonus < Minitest::Test
	def test_not_4_digits_returns_error
		assert_equal("Error, array entries must be Fixed 4 digit numbers",winning_array(12345,['1234','1235','1236','1234']))
	end

	def test_not_4_digit_entries_in_arrayr
		assert_equal("Error, entries must be 4 digits", winning_array(1234, [1234,12345,1234]))
	end

	def test_not_num_1st_entry_returns_error
		assert_equal("Error, 1st entry must be a Fixed number",winning_array("Hello", ['1234']))
	end

	def test_not_array_2nd_entry_returns_error
		assert_equal("Error, 2nd entry must be an Array of numbers", winning_array(1234, "Hello"))
	end

	def test_array_entries_not_fix_nums_returns_errors
		assert_equal("Error, entries must be 4 digits", winning_array(1234, [1234, "Hello", '1234']))
	end
end