require './frog_jmp.rb'
require 'minitest/autorun'
include FrogJump

describe FrogJump do
  it 'returns correct value for multiple jumps' do
    x = 1
    y = 10
    d = 2
    expected_value = 5
    assert_equal(expected_value, solution(x, y, d))
  end

  it 'it returns correct value for one jump' do
    x = 3
    y = 9
    d = 7
    expected_value = 1
    assert_equal(expected_value, solution(x, y, d))
  end

  it 'it returns correct value for zero jumps' do
    x = 3
    y = 3
    d = 1
    expected_value = 0
    assert_equal(expected_value, solution(x, y, d))
  end

  it 'it returns correct value when landed exacly on target' do
    x = 0
    y = 3
    d = 1
    expected_value = 3
    assert_equal(expected_value, solution(x, y, d))
  end
end
