require './missing_integer.rb'
require 'minitest/autorun'
include MissingInteger

describe MissingInteger do
  it 'correctly returns result for non-negative array' do
    a = [1, 3, 6, 4, 1, 2, 0]
    expected_missing_value = 5
    expect(solution(a)).must_equal expected_missing_value
  end

  it 'correctly returns result for all-negative array' do
    a = [-1, -3, -6, -4, -1, -2]
    expected_missing_value = 1
    expect(solution(a)).must_equal expected_missing_value
  end

  it 'correctly returns result for mixed-value array' do
    a = [-1, -3, 6, 4, 1, 2]
    expected_missing_value = 3
    expect(solution(a)).must_equal expected_missing_value
  end

  it 'correctly returns result one element array' do
    a = [1]
    expected_missing_value = 2
    expect(solution(a)).must_equal expected_missing_value
  end
end
