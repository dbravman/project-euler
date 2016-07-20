class Puzzle2
  def initialize(max)
    @max = max
    @sequence = [1,2]
    generateFibonacciSequence
    p calculate
  end

  def generateFibonacciSequence
    until @sequence[-1] > @max
      @sequence << @sequence[-1] + @sequence[-2]
    end
  end

  def calculate
    sum = 0
    @sequence.each do |i|
      if i % 2 == 0
        sum += i
      end
    end
    sum
  end
end

Puzzle2.new(4000000)