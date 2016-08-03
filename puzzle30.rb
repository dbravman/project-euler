class Puzzle30
  def initialize(power)
    @power = power
    sum = 0
    (10...10**(power+1)).each do |number|
      if number == find_digit_sum(number)
        sum += number
      end
    end
    p sum
  end

  def find_digit_sum(number)
    sum = 0
    number.to_s.each_char do |digit|
      sum += digit.to_i ** @power
    end
    sum
  end
end

Puzzle30.new(4)
Puzzle30.new(5)