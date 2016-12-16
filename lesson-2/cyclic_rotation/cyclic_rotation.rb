# https://codility.com/programmers/lessons/2-arrays/cyclic_rotation/
module CyclicRotation
  def solution(a, k)
    return [] if a.empty?
    rotated_elements = a.slice!(-k..-1)
    rotated_elements + a
  end
end
