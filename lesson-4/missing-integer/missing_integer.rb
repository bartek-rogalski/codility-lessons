# https://codility.com/programmers/lessons/4-counting_elements/missing_integer/
module MissingInteger
  def solution(array)
    occurrences = {}
    array.each do |value|
      occurrences[value] = 1 if value >= 0
    end
    (1..occurrences.count + 1).each_with_index do |minimal|
      return minimal if occurrences[minimal].nil?
    end
  end
end
