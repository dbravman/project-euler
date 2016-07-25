class Puzzle12
  def initialize(total_divisors)
    @total_divisors = total_divisors
    p testTriangleNumbers
  end

  def testTriangleNumbers
    triangleNumbers = [1]
    while true
      current = triangleNumbers.last
      if numberOfFactors(current) > @total_divisors
        return current
      end
      triangleNumbers << current + triangleNumbers.length + 1
    end
  end

  def numberOfFactors(triangleNumber)
    count = 0
    (1..Math.sqrt(triangleNumber)).each do |possible_divisor|
      if possible_divisor * possible_divisor == triangleNumber
        count += 1
      elsif triangleNumber % possible_divisor == 0  
        count += 2
      end
    end
    count
  end
end

Puzzle12.new(5)
Puzzle12.new(500)