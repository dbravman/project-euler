class Puzzle40
  def initialize(max_length)
    decimal = "."
    number = 1
    until decimal.length > max_length
      decimal += number.to_s
      number += 1
      p decimal.length
    end
    p decimal[1].to_i * decimal[10].to_i * decimal[100].to_i * decimal[1000].to_i * decimal[10000].to_i * decimal[100000].to_i * decimal[1000000].to_i
  end
end

Puzzle40.new(1000000)