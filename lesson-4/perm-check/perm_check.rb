# https://codility.com/programmers/lessons/4-counting_elements/perm_check/
module PermCheck
  def solution(array)
    occurrences = {}

    array.each do |element|
      return 0 unless occurrences[element].nil?
      occurrences[element] = 1
    end

    (1..array.count).each do |counter|
      return 0 unless occurrences[counter] == 1
    end

    1
  end
end
