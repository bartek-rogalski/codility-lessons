# https://codility.com/programmers/lessons/5-prefix_sums/count_div/
module CountDiv
  def solution(a, b, div)
    divisibles = (b / div)
    divisibles -= (a - 1) / div
  end
end
