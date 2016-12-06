require './odd_occurrences.rb'
require 'minitest/autorun'
include OddOccurrences

describe OddOccurrences do
  it 'returns the unique element for simple input data' do
    a = [9, 3, 9, 3, 7, 5, 5]
    expected_element = 7
    assert_equal(expected_element, solution(a))
  end

  it 'correctly returns unique first element' do
    a = [6, 9, 3, 9, 3, 9, 9]
    expected_element = 6
    assert_equal(expected_element, solution(a))
  end
end
