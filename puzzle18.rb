class Puzzle18
  def initialize(pyramid_string)
    @pyramid = pyramid_string.split("\n").map do |row|
      row.lstrip.split(" ").map do |number|
        number.to_i
      end
    end

    current_row = @pyramid.length - 2
    until current_row < 0
      simplify_row(current_row)
      current_row -= 1
    end 

    p @pyramid[0][0]
  end
  
  def simplify_row(row_index)
    count = 0 
    @pyramid[row_index].each do
      if @pyramid[row_index+1][count] > @pyramid[row_index+1][count+1]
        @pyramid[row_index][count] += @pyramid[row_index+1][count]
      else
        @pyramid[row_index][count] += @pyramid[row_index+1][count+1]
      end
      count += 1
    end
  end
end

pyramid_string1 = "3
7 4
 2 4 6
 8 5 9 3"

pyramid_string2 = " 75
 95 64
 17 47 82
 18 35 87 10
 20 04 82 47 65
 19 01 23 75 03 34
 88 02 77 73 07 63 67
 99 65 04 28 06 16 70 92
 41 41 26 56 83 40 80 70 33
 41 48 72 33 47 32 37 16 94 29
 53 71 44 65 25 43 91 52 97 51 14
 70 11 33 28 77 73 17 78 39 68 17 57
 91 71 52 38 17 14 91 43 58 50 27 29 48
 63 66 04 68 89 53 67 30 73 16 69 87 40 31
 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

Puzzle18.new(pyramid_string1)
Puzzle18.new(pyramid_string2)