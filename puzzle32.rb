class Puzzle32
  def initialize(digits)
    

  end
end


  # def initialize(digits)
  #   products = []
  #   possibilities = (1..digits).to_a.push("x").push("x").permutation.to_a
  #   p possibilities
  #   possibilities.each do |possibility|
  #     p possibility
  #     numbers = possibility.join.split("x")
  #     if numbers.include?("")
  #     elsif products.include?(numbers[2].to_i)
  #     elsif numbers[0].to_i * numbers[1].to_i == numbers[2].to_i
  #       products << numbers[2].to_i
  #     end
  #   end
  #   p products.reduce(:+)
  # end

Puzzle32.new(9)