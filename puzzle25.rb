class Puzzle25
  def initialize(digits)
    @fibonacci_sequence = [1,1]
    until number_of_digits(@fibonacci_sequence[-1]) == digits
      @fibonacci_sequence << @fibonacci_sequence[-1] + @fibonacci_sequence[-2]
    end
    p @fibonacci_sequence.length
  end

  def number_of_digits(number)
    number.to_s.length
  end
end

Puzzle25.new(3)
Puzzle25.new(1000)