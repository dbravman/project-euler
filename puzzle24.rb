class Puzzle24
  def initialize(min_digit, max_digit, n)
    @digits = (min_digit..max_digit).to_a
    p @digits.permutation.to_a.sort[n-1].join

    # @permutations = []
    # get_next_digit("", @digits)
    # p @permutations.sort[n-1]
  end

  # def get_next_digit(number, digits)
  #   digits.each do |digit|
  #     new_number = number + digit.to_s
  #     remaining_digits = digits - [digit]
  #     if remaining_digits.length > 1
  #       get_next_digit(new_number, remaining_digits)
  #     else 
  #       @permutations << new_number += remaining_digits[0].to_s
  #     end
  #   end
  # end
end

Puzzle24.new(0, 2, 5)
Puzzle24.new(0, 9, 1000000)