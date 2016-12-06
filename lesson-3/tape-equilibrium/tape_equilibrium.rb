# https://codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/
module TapeEquilibrium
  def solution(a)
    total_value = 0
    puts "\n initial array"
    print a
    a.map! { |elem| total_value += elem }
    puts "\n after summing up"
    print a
    a.map! { |sum| (sum - (total_value - sum)).abs }
    puts "\n final"
    a.pop
    a.min
  end
end
