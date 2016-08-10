class Puzzle45
  def initialize(penultimate)
    @triangles = [1]
    @pentagons = [1]
    @hexagons = [1]
    intersection = [1]

    until intersection[-2] == penultimate
      get_next_hexagon
      @hexagons[-1]
      until @hexagons[-1] <= @pentagons[-1]
        get_next_pentagon
      end
      until @hexagons[-1] <= @triangles[-1]
        get_next_triangle
      end
      if @hexagons[-1] == @pentagons[-1] && @hexagons[-1] == @triangles[-1]
        intersection << @hexagons[-1]
      end
    end

    p intersection[-1]
  end

  def get_next_triangle
    @triangles << @triangles[-1] + @triangles.length + 1
  end

  def get_next_pentagon
    @pentagons << @pentagons[-1] + 3 * @pentagons.length + 1
  end

  def get_next_hexagon
    @hexagons << @hexagons[-1] + 4 * @hexagons.length + 1
  end
end

Puzzle45.new(40755)