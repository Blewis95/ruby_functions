require "minitest/autorun"
require_relative "one_off.rb"

class Testoneoff < Minitest::Test

	def test_return_true_same_number
		assert_equal(true, one_off('1234','1234'))
	end

	def test_return_true_one_off
		assert_equal(true, one_off('1234','1224'))
	end

	def test_return_false_2_off
		assert_equal(false, one_off('1234','1325'))
	end

	def test_return_error
		assert_equal("Error", one_off("Hello World", "1234"))
	end

	def test_more_than_four_numbers_works
		assert_equal(true, one_off('1234567890', '1234567890'))
	end

	def test_empty_parameter_returns_error
		assert_equal("Error missing argument", one_off('','1234'))
	end

	def test_empty_parameter_returns_error_reversed
		assert_equal("Error missing argument", one_off('1234',''))
	end

	def test_different_length_parameters
		assert_equal("Error", one_off('1234', '12345'))
	end
end