# https://codility.com/programmers/lessons/6-sorting/triangle/
module Triangle
  def solution(array)
    array.sort!
    (0..array.length - 3).each do |ind|
      return 1 if array[ind + 2] < array[ind] + array[ind + 1]
    end
    0
  end
end
