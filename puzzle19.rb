class Puzzle19
  def initialize(start_date, end_date)
    sunday_count = 0
    current = start_date
    until current == end_date
      if current.sunday? && current.day == 1 
        sunday_count += 1 
      end
      current += (60*60*24)
    end
    p sunday_count
  end
end


start_date = Time.new(1901, 1, 1)
end_date = Time.new(2000, 12, 31)
Puzzle19.new(start_date, end_date)