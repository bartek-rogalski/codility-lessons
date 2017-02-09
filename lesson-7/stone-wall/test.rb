require './stone_wall.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include StoneWall

describe StoneWall do
  it 'correctly returns result for simple input' do
    heights = [8, 8, 5, 7, 9, 8, 7, 4, 8]
    expected_result = 7
    expect(solution(heights)).must_equal expected_result
  end
end
