require './missing_integer.rb'
require 'minitest/autorun'
include MissingInteger

describe MissingInteger do
  it 'correctly returns result for all-positive array' do
    a = [1, 3, 6, 4, 1, 2]
    expected_missing_value = 5
    expect(solution(a)).must_equal expected_missing_value
  end

  it 'correctly returns result for negative-value array' do
    a = [-1, -3, -6, -4, -1, -2]
    expected_missing_value = 5
    expect(solution(a)).must_equal expected_missing_value
  end

  it 'correctly returns result for mixed-value array' do
    a = [-1, -3, 6, 4, 1, 2]
    expected_missing_value = 5
    expect(solution(a)).must_equal expected_missing_value
  end

  it 'correctly returns result one element array' do
    a = [3]
    expected_missing_value = 1
    expect(solution(a)).must_equal expected_missing_value
  end
end
