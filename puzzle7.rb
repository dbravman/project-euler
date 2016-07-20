class Puzzle7
  def initialize(n)
    extendPrimes(n)
    p @primes[n-1]
  end

  def extendPrimes(n)
    @primes = [2]
    possible_prime = 3
    until @primes.length == n
      # if @primes.map { |prime| possible_prime % prime != 0}.reduce(:&)
      if primeCheck(possible_prime)
        @primes << possible_prime
      end
      possible_prime += 2
    end
  end

  def primeCheck(n)
    @primes.each do |prime|
      if n % prime == 0
        return false
      end
    end
    true
  end
end

Puzzle7.new(6)
Puzzle7.new(10001)