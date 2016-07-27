class Puzzle15
  def initialize(grid_length)
    @dim = grid_length + 1
    @target = @dim * @dim - 1
    @routes = {}
    @routes[@target] = 1
    path(0)
    p @routes[0]
  end

  def path(current_position) 
    p current_position
    if @routes.has_key?(current_position)
      return @routes[current_position]
    else
      right_paths = 0
      down_paths = 0
      if current_position / @dim != @dim - 1
        right_paths += path(current_position + @dim)
      end
      if current_position % @dim != @dim - 1
        down_paths += path(current_position + 1) 
      end
      
      @routes[current_position] = right_paths + down_paths
    end 
  end  
end

Puzzle15.new(2)
Puzzle15.new(20)