class Puzzle36
  def initialize(max)
    sum = 0
    (1...max).each do |number|
      if number.to_s == number.to_s.reverse && number.to_s(2) == number.to_s(2).reverse
        sum += number
      end
    end
    p sum
  end
end

Puzzle36.new(1000000)