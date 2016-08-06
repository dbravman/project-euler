class Puzzle34
  def initialize
    @factorials = {0 => 1}
    (1..9).each do |n|
      @factorials[n] = @factorials[n-1] * n
    end
    
    curious_sum = 0
    (3..999999).each do |n|
      if curious(n)
        curious_sum += n
      end
    end
    p curious_sum
  end

  def curious(n)
    sum = 0
    digits = n.to_s.split("")
    digits.each do |digit|
      sum += @factorials[digit.to_i]
      return false if sum > n
    end
    return sum == n
  end
end

Puzzle34.new