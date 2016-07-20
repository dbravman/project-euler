class Puzzle5
  def initialize(max)
    @max = max
    findPrimeFactors
    p calculate   
  end

  def findPrimeFactors
    @primeFactors = []
    (2..@max).each do |factor|
      remainder = factor
      @primeFactors.each do |prime|
        if remainder % prime == 0
          remainder /= prime
        end
      end
      if remainder != 1
        @primeFactors << remainder
      end
    @primeFactors.sort!
    end
  end

  def calculate
    @primeFactors.reduce(:*)
  end
end

Puzzle5.new(10)
Puzzle5.new(20)