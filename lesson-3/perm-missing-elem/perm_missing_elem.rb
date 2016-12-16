# https://codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/
module PermMissingElem
  def solution(array)
    occurences = []
    array.each do |value|
      occurences[value - 1] = 1
    end
    occurences << nil
    occurences.index(nil) + 1
  end
end
