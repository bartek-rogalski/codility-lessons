# https://codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/
module OddOccurrences
  def solution(array)
    grouped_hash = array.group_by { |element| element }
    grouped_hash.each do |key, value|
      return key if value.count.odd?
    end
  end
end
