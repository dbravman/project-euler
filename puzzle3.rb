class Puzzle3
  def initialize(number)
    @number = number
    @prime_factors = [1] #cheating for efficency
    findPrimeFactors(@number)
    p @prime_factors[-1]
  end

  def findPrimeFactors(remainder) 
    possible_divisor = [2, @prime_factors[-1]].max
    factor_found = false
    until factor_found
      if remainder % possible_divisor == 0
        @prime_factors << possible_divisor
        remainder /= possible_divisor
        factor_found = true
      else
        possible_divisor += 1
      end
    end

    if remainder != 1
      findPrimeFactors(remainder)
    end
  end
end

Puzzle3.new(13195)
Puzzle3.new(600851475143)