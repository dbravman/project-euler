class Puzzle16
  def initialize(power)
    sum = 0 
    (2**power).to_s.each_char do |c|
      sum += c.to_i
    end
    p sum
  end
end

Puzzle16.new(15)
Puzzle16.new(1000)