require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

# TDD without RSPEC
# calculator = Calculator.new 

# puts "Testing multiply method"
# if calculator.multiply(2,4) == 8
#   puts "test passed"
# else 
#   puts "test failed"
# end 

# Tests with RSPEC

RSpec.describe Calculator do 
  describe '#add' do 
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(2,4)).to eq(6)
    end   
  end   
end   