require "prime"

class Puzzle46
  def initialize
    composite = 9
    @squares = [1]
    while check_goldbach(composite)
      composite = get_next_composite(composite) 
      while @squares[-1] <= composite
        extend_squares
      end
    end
    p composite
  end

  def get_next_composite(current)
    current += 2 
    until !Prime.prime?(current)
      current += 2
    end
    current
  end

  def extend_squares
    @squares << (@squares.length + 1)**2
  end

  def check_goldbach(number)
    @squares.each do |square|
      potential_prime = number - 2*square
      if potential_prime > 0 && Prime.prime?(potential_prime)
        return true
      end
    end
    false
  end
end

Puzzle46.new