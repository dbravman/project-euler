require "prime"

class Puzzle37
  def initialize(max)
    truncatable_primes = []
    potential_prime = 11
    until truncatable_primes.length == max
      p "#{potential_prime} : #{truncatable_primes}"
      if check_truncatable(potential_prime)
        truncatable_primes << potential_prime
      end
      potential_prime += 2
    end
    p truncatable_primes
    p truncatable_primes.reduce(:+)
  end

  def check_truncatable(number)
    (number.to_s.length).times do |i|
      return false if !Prime.prime?(number.to_s[0..i].to_i)
      return false if !Prime.prime?(number.to_s[i..-1].to_i)
    end
    true
  end
end

Puzzle37.new(11)