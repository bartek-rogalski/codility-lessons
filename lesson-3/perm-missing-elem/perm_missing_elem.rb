# https://codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/
module PermMissingElem
  def solution(array)
    sequence_counter = 1
    incrementation = 2
    array_total = 0

    array.each do |element|
      array_total += element
      sequence_counter += incrementation
      incrementation += 1
    end

    sequence_counter - array_total
  end
end
