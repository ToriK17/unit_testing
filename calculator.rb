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

# Tests with RSPEC :: Remember DICE

RSpec.describe Calculator do 
  describe '#add' do 
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(2,4)).to eq(6)
    end  

    it 'should return the sum of negative numbers' do 
      calculator = Calculator.new 
      expect(calculator.add(-1, -5)).to eq(-6)
    end   
  end 

  describe '#subtract' do 
    it 'should return the difference of two numbers' do 
      calculator = Calculator.new 
      expect(calculator.subtract(9, 4)).to eq(5) 
    end
  end 

  describe '#divide' do
    it 'should return the quotient' do
      calculator = Calculator.new
      expect(calculator.divide(10, 2)).to eq(5) 
    end 
  end 

  describe '#square' do
    it 'should return the square of a number' do
      calculator = Calculator.new
      expect(calculator.square(10)).to eq(100) 
    end 
  end 

  describe '#power' do
    it 'should return exponentiation' do
      calculator = Calculator.new
      expect(calculator.power(2, 5)).to eq(32) 
    end 
  end

end   