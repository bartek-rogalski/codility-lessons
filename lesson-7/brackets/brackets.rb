# https://codility.com/programmers/lessons/7-stacks_and_queues/brackets/
module Brackets
  def solution(strng)
    ongoing = []
    beginnings = { '{' => 0, '[' => 1, '(' => 2 }
    endings    = { '}' => 0, ']' => 1, ')' => 2 }
    strng.each_char.each do |char|
      if beginnings[char].nil?
        return 0 if beginnings[ongoing.pop] != endings[char]
      else
        ongoing << char
      end
    end
    ongoing.empty? ? 1 : 0
  end
end
