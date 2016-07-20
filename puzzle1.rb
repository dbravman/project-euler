class Puzzle1
  def initialize(upperLimit)
    @upperLimit = upperLimit
    p calculate
  end

  def calculate
    sum = 0
    (1...@upperLimit).each do |i|
      if i % 3 == 0 || i % 5 == 0
        sum += i
      end
    end
    sum
  end
end

Puzzle1.new(10)
Puzzle1.new(1000)