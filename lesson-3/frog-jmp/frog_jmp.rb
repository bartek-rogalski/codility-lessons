# https://codility.com/programmers/lessons/3-time_complexity/frog_jmp/
module FrogJump
  def solution(x, y, d)
    return (y - x) / d if ((y - x) % d).zero?
    (y - x) / d + 1
  end
end
