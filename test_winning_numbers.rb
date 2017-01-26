require "minitest/autorun"
require_relative "winning_numbers.rb"

class TestWinning_numbers < Minitest::Test
	def test_winning_number_return_true
		assert_equal(true,winning_numbers(5,[3,5,6,8,2]))
	end

	def test_winning_number_return_false
		assert_equal(false,winning_numbers(5,[6,4,3,8,9]))
	end

	def test_num_not_entered_first_returns_error
		assert_equal("Error first entry must be a numeric",winning_numbers("Hello World",[5,4,3,2,1]))
	end

	def test_array_not_entered_second_returns_error
		assert_equal("Error second entry must be an array",winning_numbers(5,"Hello World"))
	end


end