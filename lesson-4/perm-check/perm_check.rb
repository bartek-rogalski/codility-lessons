# https://codility.com/programmers/lessons/4-counting_elements/perm_check/
module PermCheck
  def solution(array)
    counter = 1
    a.sort!
    a.each do |element|
      return 0 if element != counter
      counter += 1
    end
    1
  end
end
