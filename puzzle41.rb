require "prime"

class Puzzle41
  def initialize
    current_max = 0
    current = 3
    until current > 9999999
      if Prime.prime?(current) && check_pandigital(current.to_s)
        current_max = current
      end
      current += 2
    end
    p current_max
  end

  def check_pandigital(prime_string)
    (1..prime_string.length).each do |digit|
      return false if !prime_string.include?(digit.to_s)
    end
    true
  end
end

Puzzle41.new