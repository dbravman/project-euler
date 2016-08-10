require "prime"

class Puzzle47
  def initialize(n)
    @n = n
    @primes = [2,3]
    number = 1
    count = 0
    until count == n
      p number += 1
      if get_prime_factors(number) == n 
        count += 1
      else
        count = 0
      end
    end
    p number - count + 1
  end

  def get_prime_factors(number)
    factors = []
    divisor_index = 0
    until number == 1 || factors.uniq.length > @n 
      divisor = @primes[divisor_index]
      if number % divisor == 0
        number /= divisor
        factors << divisor
      else 
        if divisor == @primes[-1]
          extend_primes
        end
        divisor_index += 1
      end
    end
    factors.uniq.length
  end

  def extend_primes
    number = @primes[-1] + 2
    until Prime.prime?(number)
      number += 2
    end
    @primes << number
  end
end

Puzzle47.new(2)
Puzzle47.new(3)
Puzzle47.new(4)
