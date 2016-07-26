class Puzzle14
  def initialize(max)
    @steps = {}
    @steps[1] = 0
    @steps[2] = 1
    @steps[4] = 2
    (1...max).each do |i|
      if !@steps.has_key?(i)
        findCollatzSteps(i)
      end
    end

    p max_value
  end

  def findCollatzSteps(number)
    if @steps.has_key?(number)
    elsif number % 2 == 0
      @steps[number] = 1 + findCollatzSteps(number / 2)
    else 
      @steps[number] = 1 + findCollatzSteps(3 * number + 1)
    end
    @steps[number]
  end

  def max_value
    max = @steps.values.max
    @steps.each do |key, value|
      return key if value == max
    end
  end
end

Puzzle14.new(1000000)