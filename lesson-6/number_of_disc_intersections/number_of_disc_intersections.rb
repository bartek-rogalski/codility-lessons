# https://codility.com/programmers/lessons/6-sorting/number_of_disc_intersections/
module NumberOfDiscIntersections
  def solution(discs)
    intersections = 0
    # beginnings = {}

    # discs.each_with_index do |radius, center|
    #   starts_at = center - radius
    #   beginnings[starts_at] ||= 0
    #   beginnings[starts_at] += 1
    # end

    boundaries = discs.map.with_index { |radius, center|
      [center - radius, center + radius]
    }
    boundaries.sort!

    print "boundaries: #{boundaries}\n"
    (0..boundaries.count - 1).each do |indx|
      print "\n\nboundary: #{boundaries[indx]}\n"
      ending = boundaries[indx].last
      ((indx + 1)..(boundaries.count - 1)).each do |i|
        print "\ninspecting #{boundaries[i].first} versus ending in #{ending}"
        if boundaries[i].first <= ending
          print " yay, found!"
          intersections += 1
        end
      end
    end
    intersections
  end
end
