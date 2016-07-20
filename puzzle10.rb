require "prime"

class Puzzle10
  def initialize(max)
    @max = max
    extendPrimes(max)
    p @primes.reduce(:+)
  end

  def extendPrimes(n)
    @primes = [2]
    possible_prime = 3
    until possible_prime >= n
      if primeCheck(possible_prime)
        @primes << possible_prime
      end
      possible_prime += 2
    end
    @primes.pop
  end

  def primeCheck(n)
    @primes.each do |prime|
      if n % prime == 0
        return false
      elsif prime > Math.sqrt(n) 
        return true
      end
    end
    true
  end
end

Puzzle10.new(10)
Puzzle10.new(2000000)