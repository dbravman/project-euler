class Puzzle38
  def initialize
    current_largest = 0
    (1..9999).each do |factor1|
      (2..9).each do |n|
        current_largest = [current_largest, try_pandigital(factor1, n)].max
      end
    end
    p current_largest
  end

  def try_pandigital(factor1, n)
    products = ""
    (1..n).each do |factor2|
      products += (factor1 * factor2).to_s
    end
    products.length == 9 && contains_all_digits(products) ? products.to_i : 0
  end

  def contains_all_digits(string)
    string.include?("1") && string.include?("2") && string.include?("3") && string.include?("4") && string.include?("5") && string.include?("6") && string.include?("7") && string.include?("8") && string.include?("9") 
  end
end

Puzzle38.new