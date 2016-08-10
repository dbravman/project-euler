class Puzzle48
  def initialize(n)
    sum = 0
    (1..n).each do |number|
      sum += number**number
    end
    p sum.to_s[-10..-1]
  end
end

Puzzle48.new(10)
Puzzle48.new(1000)