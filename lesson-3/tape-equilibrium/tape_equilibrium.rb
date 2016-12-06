# https://codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/
module TapeEquilibrium
  def solution(a)
    total_value = 0
    a.map! { |elem| total_value += elem }
    a.map! { |sum| (sum - (total_value - sum)).abs }
    a.pop
    a.min
  end
end
