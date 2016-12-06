# https://codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/
module PermMissingElem
  def solution(a)
    counter = 1
    a.sort!
    a.each do |element|
      return counter if element != counter
      counter += 1
    end
    counter
  end
end
