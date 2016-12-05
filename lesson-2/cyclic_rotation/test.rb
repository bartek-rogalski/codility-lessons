require './cyclic_rotation.rb'
require 'minitest/autorun'
include CyclicRotation

describe CyclicRotation do
  it 'returns correct array when rotated by one element' do
    a =              [3, 8, 9, 7, 6]
    expected_array = [6, 3, 8, 9, 7]
    k = 1
    assert_equal(expected_array, solution(a, k))
  end

  it 'returns correct array for a valid simple data' do
    a =              [3, 8, 9, 7, 6]
    expected_array = [9, 7, 6, 3, 8]
    k = 3
    assert_equal(expected_array, solution(a, k))
  end

  it 'returns empty array if passed one as an argument' do
    a = []
    expected_array = []
    k = 3
    assert_equal(expected_array, solution(a, k))
  end
end
