class Puzzle31
  def initialize(value)
    count = 0
    (0..1).each do |p200|
      break if p200*200 > value
      (0..2).each do |p100|
        break if 100*p100 + p200*200 > value
        (0..4).each do |p50|
          break if 50*p50 + 100*p100 + p200*200 > value
          (0..10).each do |p20|
            break if 20*p20 + 50*p50 + 100*p100 + p200*200 > value
            (0..20).each do |p10|
              break if 10*p10 + 20*p20 + 50*p50 + 100*p100 + p200*200 > value
              (0..40).each do |p5|
                break if 5*p5 + 10*p10 + 20*p20 + 50*p50 + 100*p100 + p200*200 > value
                (0..100).each do |p2|
                  break if 2*p2 + 5*p5 + 10*p10 + 20*p20 + 50*p50 + 100*p100 + p200*200 > value
                  count += 1
                end
              end
            end
          end
        end
      end
    end
    p count
  end
end

Puzzle31.new(200)