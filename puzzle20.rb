class Puzzle20
  def initialize(n)
    factorial = 1
    sum = 0
    (1..n).each {|i| factorial *= i}
    factorial.to_s.each_char do |char|
      sum += char.to_i
    end
    p sum
  end
end

Puzzle20.new(10)
Puzzle20.new(100)