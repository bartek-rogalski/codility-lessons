# https://codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/
module OddOccurrences
  def solution(a)
    a.sort!
    (0..a.length - 1).step(2). each do |counter|
      return a[counter] unless a[counter] == a[counter + 1]
    end
  end
end
