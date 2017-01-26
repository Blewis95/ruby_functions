require "minitest/autorun"
require_relative "multiplication.rb"

class TestMultiplication < Minitest::Test
	def test_1_times_2
		assert_equal(2,multiply(1,2))
	end

	def test_3_times_2
		assert_equal(6,multiply(3,2))
	end

	def test_7_times_2_point_5
		assert_equal(17.5,multiply(7,2.5))
	end

	def test_string_multiplication
		assert_equal("Error",multiply("Hello ", "World"))
	end

	def test_negative_numbers
		assert_equal(-40,multiply(10,-4))
	end

	def test_3_numbers
		assert_equal(1,multiply(1,1,1))
	end

	def test_string_and_num
		assert_equal("Error", multiply("Hello", 42))
	end

	def test_no_arguments_returns_error
		assert_equal("Error", multiply())
	end

	def test_mixed_arguments_returns_error
		assert_equal("Error", multiply(1,2,3,"GabeN",47.9,"Hello World!"))
	end
end