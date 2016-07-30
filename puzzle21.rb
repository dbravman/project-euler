class Puzzle21
  def initialize(max)
    @amicables = []
    @divisor_sums = {}
    (1...max).each do |number|
      @divisor_sums[number] = find_divisor_sum(number)
    end
    find_amicables
    p @amicables.reduce(:+)
  end

  def find_divisor_sum(number)
    divisors = []
    (1..Math.sqrt(number)).each do |possible_divisor|
      if number % possible_divisor == 0
        divisors << possible_divisor
        if number / possible_divisor != possible_divisor && possible_divisor != 1
          divisors << number / possible_divisor
        end
      end
    end
    divisors.reduce(:+)
  end

  def find_amicables
    @divisor_sums.keys.each do |number|
      if @divisor_sums[@divisor_sums[number]] == number && @divisor_sums[number] != number
        @amicables << number
      end
    end
  end
end

Puzzle21.new(10000)