class Puzzle1
  def initialize(upperLimit)
    @upperLimit = upperLimit
    calculate
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

p Puzzle1.new(10)
p Puzzle1.new(1000)