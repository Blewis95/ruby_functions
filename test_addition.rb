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
end