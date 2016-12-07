# https://codility.com/programmers/lessons/4-counting_elements/frog_river_one/
module FrogRiverOne
  def solution(x, a)
    occurences = []
    time = 0
    a.each do |pos|
      unless occurences.include?(pos)
        occurences << pos
        return time if occurences.count == x
      end
      time += 1
    end
    -1
  end
end
