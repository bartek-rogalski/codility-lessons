require './frog_river_one.rb'
require 'minitest/autorun'
include FrogRiverOne

describe FrogRiverOne do
  it 'correctly returns result for simple input' do
    a = [1, 3, 1, 4, 2, 3, 5, 4]
    x = 5
    expected_time = 6
    expect(solution(x, a)).must_equal expected_time
  end

  it 'correctly returns value if single element is needed' do
    a = [1]
    x = 1
    expected_time = 0
    expect(solution(x, a)).must_equal expected_time
  end

  it 'returns correct value when never able to cross' do
    a = [1, 3, 2, 5]
    x = 5
    expected_time = -1
    expect(solution(x, a)).must_equal expected_time
  end
end
