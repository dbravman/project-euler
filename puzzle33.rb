class Puzzle33
  def initialize
    numerators = []
    denominators = []
    (10..99).each do |numerator|
      (10..99).each do |denominator|
        if numerator < denominator && check_fraction(numerator, denominator)
          numerators << numerator
          denominators << denominator
        end
      end
    end

    p answer = numerators.reduce(:*).to_f / denominators.reduce(:*).to_f

  end
  
  def check_fraction(numerator, denominator)
    fraction = numerator.to_f/denominator.to_f
    numerator_digits = numerator.to_s.split("")
    denominator_digits = denominator.to_s.split("")

    if numerator_digits & denominator_digits == []
      return false
    end

    if numerator_digits[0] == denominator_digits[0]
      return true if fraction == numerator_digits[1].to_f / denominator_digits[1].to_f
    end

    if numerator_digits[0] == denominator_digits[1]
      return true if fraction == numerator_digits[1].to_f / denominator_digits[0].to_f
    end

    if numerator_digits[1] == denominator_digits[0]
      return true if fraction == numerator_digits[0].to_f / denominator_digits[1].to_f
    end

    if numerator_digits[1] != "0" && numerator_digits[1] == denominator_digits[1]
      return true if fraction == numerator_digits[0].to_f / denominator_digits[0].to_f
    end

    false
  end
end

Puzzle33.new