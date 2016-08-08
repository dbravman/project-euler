require "prime"

class Puzzle35
  def initialize(max)
    circulars = [2,5]

    potential_prime = 3
    until potential_prime >= max
      if check_circular(potential_prime)
        circulars << potential_prime
      end
      potential_prime += 2
    end
    p circulars
    p circulars.length
  end

  def check_circular(potential_prime)
    potential_prime_string = potential_prime.to_s
    return false if contains_evens_or_fives(potential_prime_string)

    potential_prime_string.length.times do |i| 
      rotated_prime_string = potential_prime_string[i..-1] + potential_prime_string[0...i]
      return false if !Prime.prime?(rotated_prime_string.to_i)
    end
    true
  end

  def contains_evens_or_fives(potential_prime_string)
    potential_prime_string.include?("2") || potential_prime_string.include?("4") || potential_prime_string.include?("6") || potential_prime_string.include?("8") || potential_prime_string.include?("0") || potential_prime_string.include?("5")
  end
end

Puzzle35.new(100)
Puzzle35.new(1000000)