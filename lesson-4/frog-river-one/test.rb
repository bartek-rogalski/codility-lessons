require './frog_river_one.rb'
require 'minitest/autorun'
include FrogRiverOne

describe FrogRiverOne do
  it 'correctly return result for simple input' do
    a = [1, 3, 1, 4, 2, 3, 5, 4]
    x = 5
    seconds = 6
    expect(solution(a, x)).must_equal seconds
  end
end
