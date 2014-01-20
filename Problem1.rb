class Problem1

	def findSum
		total = 0
		(1...1000).each do |number|
			# if number % 5 == 0
			# 	total += number
			# elsif number % 3 == 0
			# 	total += number
			# end
			if dividendEvenlyDivisibleByDivisor(number, 5)
				total += number
			elsif dividendEvenlyDivisibleByDivisor(number, 3)
				total += number
			end
		end
		total
	end

	def dividendEvenlyDivisibleByDivisor(dividend, divisor)
		if dividend % divisor == 0
			true
		else 
			false
		end
	end

end



require 'test/unit'
class Problem1_Test < Test::Unit::TestCase

	def test_true_dividendEvenlyDivisibleByDivisor
		cut = Problem1.new

		actualAnswer = cut.dividendEvenlyDivisibleByDivisor(9,3)
		expectedAnswer = true

		assert_equal actualAnswer, expectedAnswer
	end	

	def test_false_dividendEvenlyDivisibleByDivisor
		cut = Problem1.new

		actualAnswer = cut.dividendEvenlyDivisibleByDivisor(10,3)
		expectedAnswer = false

		assert_equal actualAnswer, expectedAnswer
	end	

	def test_findSum
		cut = Problem1.new

		actualAnswer = cut.findSum
		expectedAnswer = 233168

		assert_equal actualAnswer, expectedAnswer
	end

end