require './number_of_disc_intersections.rb'
require 'minitest/autorun'
# require 'minitest/pride'
# # require 'minitest/reporters'
# # Minitest::Reporters.use!

include NumberOfDiscIntersections

describe NumberOfDiscIntersections do
  it 'correctly returns result for simple input' do
    # index  0, 1, 2, 3, 4, 5
    discs = [1, 5, 2, 1, 4, 0]
    intersections = 11
    expect(solution(discs)).must_equal intersections
  end

  it 'recognizes overlapping discs of equal size' do
    discs = [0, 1, 2, 3]
    intersections = 6
    expect(solution(discs)).must_equal intersections
  end
end
