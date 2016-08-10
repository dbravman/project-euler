require "prime"

class Puzzle50
  def initialize(max)
    @primes = []
    current_longest = 0
    Prime.each(max) {|prime| @primes << prime}
    (2..@primes.length).each do |terms|
      p "terms: #{terms}"
      i = 0
      sum = @primes[i...(i+terms)].reduce(:+)
      until Prime.prime?(sum) || sum >= max 
        i += 1
        sum = @primes[i...(i+terms)].reduce(:+)
      end
      if Prime.prime?(sum) && sum < max
        current_longest = sum
      end
    end
    p current_longest
  end
end

Puzzle50.new(100)
Puzzle50.new(1000)
Puzzle50.new(1000000)