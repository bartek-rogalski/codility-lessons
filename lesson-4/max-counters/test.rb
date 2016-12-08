require './max_counters.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
include MaxCounters

describe MaxCounters do
  it 'correctly returns result for simple input' do
    a = [3, 4, 4, 6, 1, 4, 4]
    n = 5
    expected_counters = [3, 2, 2, 4, 2]
    expect(solution(n, a)).must_equal expected_counters
  end
end
