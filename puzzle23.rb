class Puzzle23
  def initialize(max)
    @max = max
    @abundants = []
    @abundant_sums = []
    find_abundant_numbers
    find_abundant_sums
    p ((1..@max).to_a - @abundant_sums).reduce(:+)
  end

  def find_abundant_numbers
    (1...@max).each do |number|
      sum = 0
      (1..Math.sqrt(number)).each do |possible_divisor|
        if number % possible_divisor == 0
          sum += possible_divisor
          if number / possible_divisor != possible_divisor && possible_divisor != 1
            sum += number / possible_divisor
          end
        end
      end
      if sum > number
        @abundants << number
      end
    end
  end

  def find_abundant_sums
    (0..@abundants.length - 1).each do |index1|
      (index1..@abundants.length - 1).each do |index2|
        @abundant_sums << @abundants[index1] + @abundants[index2]
      end
    end
    @abundant_sums.uniq!
  end
end

Puzzle23.new(28123)