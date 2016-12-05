require './binary_gap.rb'
require 'minitest/autorun'
include BinaryGap

describe BinaryGap do
  it 'correctly returns non-zero value for valid data' do
    n = 17
    expected_longest_gap_value = 3
    expect(solution(n)).must_equal expected_longest_gap_value
  end

  it 'correctly returns zero value for valid data' do
    n = 15
    expected_longest_gap_value = 0
    expect(solution(n)).must_equal expected_longest_gap_value
  end

  it 'returns correct value for trailing zeros' do
    n = 6
    expected_longest_gap_value = 0
    expect(solution(n)).must_equal expected_longest_gap_value
  end

  it 'returns correct value when \
      the last gap in the string was not the longest one' do
    n = 1041
    expected_longest_gap_value = 5
    expect(solution(n)).must_equal expected_longest_gap_value
  end
end
