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

  def word(number)
    return 80085
  end

  def square_root(number)
    return Math.sqrt(number) 
  end

  def numbers_less_than(number)
    return 
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(5, 6)
      expect(result).to eq(30)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(10, 2)
      expect(result).to eq(5)
    end
  end

  describe '#square' do
    it 'should muliply a number by itself' do
      calculator = Calculator.new
      result = calculator.square(7)
      expect(result).to eq(49)
    end  
  end

  describe '#power' do
    it 'should take a number to the power of the second number' do
      calculator = Calculator.new
      result = calculator.power(4, 3)
      expect(result).to eq(64)
    end
  end

  describe '#word' do
    it 'should give you a funny word every time' do
      calculator = Calculator.new
      result = calculator.word(1)
      expect(result).to eq(80085)
    end
  end

  describe '#square_root' do
    it 'should give the square root of a number' do
      calculator = Calculator.new
      result = calculator.square_root(49)
      expect(result).to eq(7)
    end
  end
end


