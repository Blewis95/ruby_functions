require "minitest/autorun"
require_relative "division.rb"

class TestDivision < Minitest::Test
	def test_1_dividedby_1
		assert_equal(1,divide(1,1))
	end

	def test_6_dividedby_2
		assert_equal(3,divide(6,2))
	end

	def test_17_point_5_dividedby_2_point_5
		assert_equal(7,divide(17.5,2.5))
	end

	# => FAILED
	def test_string_division
		assert_equal("Please enter 2 NUMBERS! and try again",divide("Hello ", "World!"))
	end

	def test_negative_numbers
		assert_equal(10,divide(-40,-4))
	end
end