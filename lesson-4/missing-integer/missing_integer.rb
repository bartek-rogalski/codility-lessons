# https://codility.com/programmers/lessons/4-counting_elements/missing_integer/
module MissingInteger
  def solution(a)
    a.reject! { |value| value <= 0 }
    a.uniq!
    a.sort!
    (1..a.length + 1).each do |elem|
      return elem unless elem == a[(elem - 1)]
    end
    1
  end
end
