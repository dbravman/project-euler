class Puzzle9
  def initialize(sum)
    @sum = sum
    p calculate
  end

  def calculate
    answer = nil
    (1..@sum).each do |c|
      (1...c).each do |b|
        a = @sum - c - b
        if a**2 + b**2 == c**2
          return a * b * c
        end
      end
    end
  end
end

Puzzle9.new(12)
Puzzle9.new(1000)