class Puzzle4
  def initialize(max1, max2)
    @max1 = max1
    @max2 = max2
    @largest = 0
    calculate
    p @largest
  end

  def calculate
    (1..@max1).each do |i|
      (i..@max2).each do |j|
        product = i * j
        if product > @largest && checkPalindrome(product) 
          @largest = product
        end
      end
    end
  end

  def checkPalindrome(num)
    num.to_s == num.to_s.reverse
  end
end

Puzzle4.new(99, 99)
Puzzle4.new(999, 999)