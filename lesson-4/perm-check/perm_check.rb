# https://codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/
module PermCheck
  def solution(a)
    counter = 1
    a.sort!
    a.each do |element|
      return 0 if element != counter
      counter += 1
    end
    1
  end
end
