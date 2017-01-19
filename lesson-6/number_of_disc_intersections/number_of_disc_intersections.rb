# https://codility.com/programmers/lessons/6-sorting/number_of_disc_intersections/
module NumberOfDiscIntersections
  def solution(discs)
    intersections = 0
    beginnings = {}

    discs.each_with_index do |radius, center|
      starts_at = center - radius
      beginnings[starts_at] ||= 0
      beginnings[starts_at] += 1
    end

    boundaries = discs.map.with_index { |radius, center| [center - radius, center + radius] }
    boundaries.sort!

    print "boundaries: #{boundaries}\n"
    print "beginnings: #{beginnings}\n"
    boundaries.each do |limits|
      print "boundary: #{limits}\n"
      start = limits.first
      ending = limits.last
      beginnings.each do |point, occurences|
        if point <= ending && point >= start
          print "yay! point: #{point}, ending: #{ending}, occurences: #{occurences}\n"
          intersections += occurences
        else
          next
        end
      end
      intersections -= 1
    end
    intersections
  end
end
