class Puzzle44
  def initialize
    current_min = nil
    @pentagons = [1]
    while current_min == nil
      add_new_pentagon
      current_min = check_new_pentagon
    end
    p current_min 
  end

  def add_new_pentagon
    count = @pentagons.length
    @pentagons << @pentagons[-1] + count *3 + 1
    p "#{@pentagons[-1]} length #{count}"
  end

  def check_new_pentagon
    sum = @pentagons[-1]
    @pentagons.each do |number2|
      number1 = sum - number2 
      if @pentagons.include?(number1)
        difference = number2 - number1
        if @pentagons.include?(difference)
          return difference
        end
      end
    end
    nil
  end
end

Puzzle44.new