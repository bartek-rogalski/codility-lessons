# https://codility.com/programmers/lessons/1-iterations/binary_gap/
module BinaryGap
  def solution(n)
    binary = n.to_s(2)
    gaps = binary.split('1')
    gaps.pop if n.even?
    return 0 if gaps.empty?
    gaps.map(&:length).max
  end
end
