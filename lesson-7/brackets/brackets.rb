# https://codility.com/programmers/lessons/7-stacks_and_queues/brackets/
module Brackets
  def solution(strng)
    ongoing = []
    bracket_pairs = { '{' => '}', '[' => ']', '(' => ')' }
    strng.each_char.each do |bracket|
      if bracket_pairs[bracket].nil?
        return 0 if bracket_pairs[ongoing.pop] != bracket
      else # Opening bracket
        ongoing << bracket
      end
    end
    ongoing.empty? ? 1 : 0
  end
end
