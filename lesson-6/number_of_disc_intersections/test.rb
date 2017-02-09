require './number_of_disc_intersections.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include NumberOfDiscIntersections

describe NumberOfDiscIntersections do
  it 'correctly returns result for simple input' do
    # index  0, 1, 2, 3, 4, 5
    discs = [1, 5, 2, 1, 4, 0]
    intersections = 11
    expect(solution(discs)).must_equal intersections
  end

  it 'recognizes multiple overlapping discs beginnings' do
    discs = [0, 1, 2, 3]
    intersections = 6
    expect(solution(discs)).must_equal intersections
  end

  it 'recognizes multiple overlapping discs endings' do
    discs = [4, 3, 2, 1, 0]
    intersections = 10
    expect(solution(discs)).must_equal intersections
  end

  it 'returns 0 for a single disc' do
    discs = [20]
    intersections = 0
    expect(solution(discs)).must_equal intersections
  end
end
