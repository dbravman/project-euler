class Puzzle43
  def initialize
    possible_pandigitals = (123..987).to_a.map {|number| number.to_s}
    [2,3,5,7,11,13,17].each do |divisor|
      possible_pandigitals = add_next_digit(possible_pandigitals)
      possible_pandigitals = remove_duplicates(possible_pandigitals)
      possible_pandigitals = check_divisibility(possible_pandigitals, divisor)
    end
    p possible_pandigitals.map {|number| number.to_i}.reduce(:+)
  end

  def check_divisibility(numbers, divisor)
    numbers.delete_if do |number|
      number[-3..-1].to_i % divisor != 0
    end
  end

  def add_next_digit(numbers)
    next_array = []
    numbers.each do |number|
      next_array += (0..9).to_a.map {|new_digit| number + new_digit.to_s}
    end
    next_array
  end

  def remove_duplicates(numbers)
    numbers.delete_if do |number|
      !check_duplicate(number)
    end
  end

  def check_duplicate(number)
    number.each_char do |digit|
      return false if number.count(digit) > 1
    end
    true
  end
end

Puzzle43.new