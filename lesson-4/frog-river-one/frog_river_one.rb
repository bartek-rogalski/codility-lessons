# https://codility.com/programmers/lessons/4-counting_elements/frog_river_one/
module FrogRiverOne
  def solution(x, a)
    positions = []
    spot = 0

    a.each.with_index do |elem, seconds|
      if positions[elem].nil?
        positions[elem] = 0
        spot += 1
        return seconds if spot == x
      end
    end
    -1
  end
end
