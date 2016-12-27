# https://codility.com/programmers/lessons/5-prefix_sums/count_div/
module CountDiv
  def solution(a, b, div)
    divisibles = (b - a) / div
    print divisibles
    divisibles += 1 if (a % div).zero?
    divisibles
  end
end
