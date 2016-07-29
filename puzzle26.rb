class Puzzle26
  def initialize(max_denominator)
    @max_denominator = max_denominator
    @cycles = {}
    (2..max_denominator).each do |denominator|
      remainders = [1]
      @cycles[denominator] = long_divide(10,denominator,remainders)
    end

    p find_max_cycle
  end

  def long_divide(dividend, divisor, remainders)
    remainder = dividend % divisor
    if remainder == 0
      return 0
    elsif dividend / divisor == 0
      return long_divide(remainder*10, divisor, remainders)
    elsif remainders.include?(remainder)
      return remainders.length - remainders.index(remainder)
    else
      remainders << remainder
      return long_divide(remainder*10, divisor, remainders)
    end
  end

  def find_max_cycle
    max = @cycles.values.max
    @cycles.each do |key, value|
      if value == max
        return key
      end
    end
  end
end

Puzzle26.new(10)
Puzzle26.new(999)