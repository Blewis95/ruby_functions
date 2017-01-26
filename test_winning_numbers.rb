require "minitest/autorun"
require_relative "winning_numbers.rb"

class TestWinning_numbers < Minitest::Test
	def test_winning_number_return_true
		assert_equal(true,winning_numbers(5,[3,5,6,8,2]))
	end

	def test_winning_number_return_false
		assert_equal(false,winning_numbers(5,[6,4,3,8,9]))
	end

end