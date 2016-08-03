class Puzzle28
  def initialize(dim)
    @dim = dim
    @numbers = (1..dim*dim).to_a
    @grid = []
    fill_grid

    @diagonals = []
    find_right_diagonal
    find_left_diagonal
    p @diagonals.reduce(:+) - 1
  end
  
  def fill_grid
    fill_top
    fill_left
    fill_bottom
    fill_right

    directional_offset = -1
    current_index = 2 * @dim - 2
    until @numbers == []
      @grid[current_index] = @numbers.pop
      
      if @grid[current_index + directional_offset] != nil
        directional_offset = case directional_offset
          when -1 then @dim
          when @dim then 1
          when 1 then -@dim
          when -@dim then -1
        end
      end
      current_index += directional_offset
    end 
  end

  def fill_top
    current_index = @dim - 1
    (@dim-1).times do
      @grid[current_index] = @numbers.pop
      current_index -= 1
    end
  end

  def fill_left
    current_index = 0
    (@dim-1).times do 
      @grid[current_index] = @numbers.pop
      current_index += @dim
    end
  end

  def fill_bottom
    current_index = (@dim - 1) * @dim
    (@dim-1).times do 
      @grid[current_index] = @numbers.pop
      current_index += 1
    end
  end

  def fill_right
    current_index = @dim * @dim - 1
    (@dim-1).times do 
      @grid[current_index] = @numbers.pop
      current_index -= @dim
    end
  end

  def find_right_diagonal
    (0..@dim-1).each do |current_index|
      @diagonals << @grid[current_index * (@dim+1)]
    end
  end

  def find_left_diagonal
    (1..@dim).each do |current_index|
      @diagonals << @grid[current_index * (@dim-1)]
    end
  end
end

Puzzle28.new(5)
Puzzle28.new(1001)