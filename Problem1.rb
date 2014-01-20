class Problem1

	def findSum
		total = 0
		(1...1000).each do |number|
			if number % 5 == 0
				total += number
			elsif number % 3 == 0
				total += number
			end
		end
		total
	end
end



require 'test/unit'
class Problem1_Test < Test::Unit::TestCase

	def test_findSum
		cut = Problem1.new

		actualAnswer = cut.findSum
		expectedAnswer = 233168

		assert_equal actualAnswer, expectedAnswer
	end

end