# https://codility.com/programmers/lessons/6-sorting/distinct/
module Distinct
  def solution(array)
    occurrences = {}
    array.each do |element|
      if occurrences[element].nil?
        occurrences[element] = true
      end
    end
    occurrences.count
  end
end
