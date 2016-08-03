class Puzzle29
  def initialize(min, max) 
    @powers = []
    (min..max).each do |base|
      (min..max).each do |exponent|
        @powers << base ** exponent
      end
    end

    p @powers.uniq.length
  end
end

Puzzle29.new(2,5)
Puzzle29.new(2,100)