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

	
	def test_string_division
		assert_equal("Error",divide("Hello ", "Wo rld!"))
	end

	def test_negative_numbers
		assert_equal(10,divide(-40,-4))
	end

	def test_3_numbers
		assert_equal(1,divide(9,3,2))
	end

	def test_string_and_num
		assert_equal("Error", divide("Hello", 42))
	end

	def test_no_arguments_returns_error
		assert_equal("Error", divide())
	end

	def test_mixed_arguments_returns_error
		assert_equal("Error", divide(1,2,3,"GabeN",47.9,"Hello World!"))
	end
end