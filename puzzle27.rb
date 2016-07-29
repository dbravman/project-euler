require "prime"

class Puzzle27
  def initialize(a_max, b_max)
    current_max = 0
    product = nil
    (-a_max+1...a_max).each do |a|
      (-b_max..b_max).each do |b|
        count = check_formula(a, b) 
        if count > current_max
          current_max = count
          product = a * b 
        end
      end
    end
    p product
  end

  def check_formula(a,b)
    n = 0
    until !Prime.prime?(n**2 + a*n + b)
      n += 1
    end
    n
  end
end

Puzzle27.new(1000, 1000)