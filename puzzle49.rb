require "prime"

class Puzzle49
  def initialize
    (1000..9997).each do |number1|
      if Prime.prime?(number1)
        (1..((9999-number1)/2)).each do |increase|
          number2 = number1 + increase
          number3 = number2 + increase
          if Prime.prime?(number2) && Prime.prime?(number3) && check_anagram(number1, number2, number3)
            p "#{number1}#{number2}#{number3}"
          end
        end
      end
    end
  end

  def check_anagram(a, b, c)
    digits = a.to_s.chars.sort
    digits == b.to_s.chars.sort && digits == c.to_s.chars.sort
  end
end

Puzzle49.new