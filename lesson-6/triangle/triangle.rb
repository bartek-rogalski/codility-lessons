# https://codility.com/programmers/lessons/6-sorting/triangle/
module Triangle
  def solution(array)
    array.sort!
    (0..array.length - 3).each do |ind|
      first_pair = array[ind] < (array[ind + 1] + array[ind + 2])
      second_pair = array[ind + 1] < (array[ind] + array[ind + 2])
      third_pair = array[ind + 2] < (array[ind] + array[ind + 1])

      return 1 if first_pair && second_pair && third_pair
    end
    0
  end
end
