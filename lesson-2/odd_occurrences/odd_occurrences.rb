# https://codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/
module OddOccurrences
  def solution(array)
    occurrences = {}
    array.each do |element|
      if occurrences[element].nil?
        occurrences[element] = 1
      else
        occurrences[element] += 1
      end
    end
    occurrences.each do |key, value|
      return key if value.odd?
    end
  end
end
