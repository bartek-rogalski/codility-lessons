# https://codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/
module OddOccurrences
  def solution(a)
    a.each do
      current_element = a.slice!(0)
      id = a.find_index(current_element)
      return current_element if id.nil?
      a.delete_at(id)
    end
    a[0]
  end
end
