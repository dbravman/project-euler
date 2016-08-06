class Puzzle32
  def initialize
    #1 x 4 = 4
    #2 x 3 = 4
    products = []
    (1..9).each do |factor1|
      (1234..9876).each do |factor2|
        if check_pandigital(factor1, factor2, factor1 * factor2)
          p "#{factor1} x #{factor2} = #{factor1 * factor2}" 
          products << factor1 * factor2
        end 
      end
    end

    (12..98).each do |factor1|
      (123..987).each do |factor2|
        if check_pandigital(factor1, factor2, factor1 * factor2)
          p "#{factor1} x #{factor2} = #{factor1 * factor2}"
          products << factor1 * factor2
        end 
      end
    end      

    p products.uniq.reduce(:+)
  end

  def check_pandigital(factor1, factor2, product)
    digits = factor1.to_s.split("") + factor2.to_s.split("") + product.to_s.split("")
    return !digits.include?("0") && digits.length == 9 && digits.length == digits.uniq.length
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

Puzzle32.new