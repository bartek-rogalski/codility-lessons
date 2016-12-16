require './odd_occurrences.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include OddOccurrences

describe OddOccurrences do
  it 'returns the unique element for simple input data' do
    a = [9, 3, 9, 3, 7, 5, 5]
    expected_element = 7
    expect(solution(a)).must_equal expected_element
  end

  it 'correctly returns unique first element' do
    a = [6, 9, 3, 9, 3, 9, 9]
    expected_element = 6
    expect(solution(a)).must_equal expected_element
  end

  it 'returns unpaired element if multiple other equal present' do
    a = [1, 5, 5, 5, 3, 3, 5, 5, 9, 9, 1]
    expected_element = 5
    expect(solution(a)).must_equal expected_element
  end
end
