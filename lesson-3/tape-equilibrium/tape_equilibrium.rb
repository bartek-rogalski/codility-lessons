# https://codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/
module TapeEquilibrium
  def solution(array)
    total_value = 0
    array.map! { |elem| total_value += elem }
    array.pop
    minimum = (array[0] - (total_value - array[0])).abs
    array.map do |sum|
      sum = (sum - (total_value - sum)).abs
      minimum = sum if sum < minimum
    end
    minimum
  end
end
