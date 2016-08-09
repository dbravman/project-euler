class Puzzle39
  def initialize(max)
    current_max_perimeter = 0
    current_max_solutions = 0
    (3..max).each do |perimeter|
      current_triplets = find_triplets(perimeter)
      if current_triplets > current_max_solutions
        current_max_perimeter = perimeter
        current_max_solutions = current_triplets
      end
    end
    p current_max_perimeter
  end

  def find_triplets(perimeter)
    triplets = 0
    (3..perimeter/2).each do |c|
      (1...perimeter/2).each do |b|
        a = perimeter - b - c
        if a > 0 && a*a + b*b == c*c
          triplets += 1
        end
      end
    end
    triplets
  end
end

Puzzle39.new(1000)