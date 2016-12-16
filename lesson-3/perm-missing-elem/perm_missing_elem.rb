# https://codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/
module PermMissingElem
  def solution(array)
    occurrences = []
    array.each do |value|
      occurrences[value - 1] = 1
    end
    occurrences << nil
    occurrences.index(nil) + 1
  end
end
