# https://codility.com/programmers/lessons/4-counting_elements/frog_river_one/
module FrogRiverOne
  def solution(x, a)
    longest = 0
    (1..x).each do |elem|
      current = a.find_index(elem)
      return -1 if current.nil?
      longest = current if current > longest
    end
    longest
  end
end
