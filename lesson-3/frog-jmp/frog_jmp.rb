# https://codility.com/programmers/lessons/3-time_complexity/frog_jmp/
module FrogJump
  def solution(x, y, jump)
    distance = y - x
    return distance / jump if (distance % jump).zero?
    distance / jump + 1
  end
end
