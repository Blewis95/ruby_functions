require "minitest/autorun"
require_relative "subtraction.rb"

class TestSubtraction < Minitest::Test
	def test_1_minus_1
		assert_equal(0,subtract(1,1))
	end

	def test_3_minus_2
		assert_equal(1,subtract(3,2))
	end

	def test_7_minus_2_point_5
		assert_equal(4.5,subtract(7,2.5))
	end

	# => FAILED
	# def test_string_subtraction
	# 	assert_equal("Hell",subtract("Hello ", "o "))
	# end

	def test_negative_numbers
		assert_equal(14,subtract(10,-4))
	end
end