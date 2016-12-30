require './min_avg_two_slice.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include MinAvgTwoSlice

describe MinAvgTwoSlice do
  it 'correctly returns result for simple example' do
    array = [4, 2, 2, 5, 1, 5, 8]
    expected_result = 1
    expect(solution(array)).must_equal expected_result
  end

  it 'returns the first minimum average if multiple equal present' do
    array = [1, 1, 1, 0, -1, 0, 1, 0, -1, 1]
    expected_result = 3
    expect(solution(array)).must_equal expected_result
  end
end
