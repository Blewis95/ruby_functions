require "minitest/autorun"
require_relative "addition.rb"

class TestAddition < Minitest::Test
	def test_1_plus_1
		assert_equal(2,add(1,1))
	end

	def test_2_plus_3
		assert_equal(5,add(2,3))
	end

	def test_2_point_5_plus_7
		assert_equal(9.5,add(2.5,7))
	end

	def test_string_addition
		assert_equal("Hello World",add("Hello ", "World"))
	end

	def test_negative_numbers
		assert_equal(6,add(-4,10))
	end

	def test_3_numbers
		assert_equal(3,add(1,1,1))
	end

	def test_string_and_num
		assert_equal("Error", add("Hello", 42))
	end

	def test_no_arguments_returns_error
		assert_equal("Error", add())
	end

	def test_mixed_arguments_returns_error
		assert_equal("Error", add(1,2,3,"GabeN",47.9,"Hello World!"))
	end
end