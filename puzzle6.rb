class Puzzle6
  def initialize(max)
    @max = max
    p (sumOfSquares - squareOfSum).abs
  end

  def sumOfSquares
    (1..@max).map {|i| i**2}.reduce(:+)
  end

  def squareOfSum
    (1..@max).reduce(:+) ** 2
  end
end

Puzzle6.new(10)
Puzzle6.new(100)