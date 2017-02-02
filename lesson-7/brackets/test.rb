require './brackets.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include Brackets

describe Brackets do
  it 'recognizes correct nesting' do
    strng = '{[()()]}'
    expected_result = 1
    expect(solution(strng)).must_equal expected_result
  end

  it 'returns 0 when incorrectly nested' do
    strng = '([)()]'
    expected_result = 0
    expect(solution(strng)).must_equal expected_result
  end

  it 'returns 0 when passed only opening brackets' do
    strng = '({['
    expected_result = 0
    expect(solution(strng)).must_equal expected_result
  end

  it 'returns 0 when passed only closing brackets' do
    strng = ']]]]'
    expected_result = 0
    expect(solution(strng)).must_equal expected_result
  end
end
