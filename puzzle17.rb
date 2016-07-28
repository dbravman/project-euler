class Puzzle17
  def initialize(max)
    sum = 0
    (1..max).each {|num| sum += count_letters(num)}
    p sum
  end

  def count_letters(num)
    parse(num).length
  end

  def parse(num)
    hundreds_digit = num / 100 
    hundreds = hundreds_digit * 100
    tens_digit = (num - hundreds) / 10
    tens = tens_digit * 10
    ones_digit = (num - hundreds - tens)
    ones = ones_digit

    p word_form = parse_hundreds(hundreds_digit, tens_digit, ones_digit) + parse_tens(tens_digit, ones_digit)
  end

  def parse_hundreds(hundreds_digit, tens_digit, ones_digit) 
    hundreds_words = case hundreds_digit
      when 10 then "onethousand"
      when 1..9 then parse_ones(hundreds_digit) + "hundred"
      else ""
    end

    if hundreds_digit != 0 && (tens_digit != 0 || ones_digit != 0)
      hundreds_words += "and"
    end
    hundreds_words
  end

  def parse_tens(tens_digit, ones_digit)
    tens_words = case tens_digit
      when 9 then "ninety"
      when 8 then "eighty"
      when 7 then "seventy"
      when 6 then "sixty"
      when 5 then "fifty"
      when 4 then "forty"
      when 3 then "thirty"
      when 2 then "twenty" 
      when 1 then parse_special_tens(ones_digit)
      when 0 then parse_ones(ones_digit)
    end

    ones_words = case tens_digit
      when 2..9 then parse_ones(ones_digit)
      else ""
    end

    tens_words + ones_words  
  end

  def parse_ones(ones_digit)
    ones_words = case ones_digit
      when 1 then "one"
      when 2 then "two"
      when 3 then "three"
      when 4 then "four"
      when 5 then "five"
      when 6 then "six"
      when 7 then "seven"
      when 8 then "eight"
      when 9 then "nine"
      else ""
    end
  end

  def parse_special_tens(ones_digit)
    special_tens = case ones_digit
      when 0 then "ten"
      when 1 then "eleven"
      when 2 then "twelve"
      when 3 then "thirteen"
      when 4 then "fourteen"
      when 5 then "fifteen"
      when 6 then "sixteen"
      when 7 then "seventeen"
      when 8 then "eighteen"
      when 9 then "nineteen"
    end
  end
end

Puzzle17.new(5)
Puzzle17.new(1000)