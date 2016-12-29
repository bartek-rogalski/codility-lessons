require './max_counters.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include MaxCounters

describe MaxCounters do
  it 'correctly returns result for simple input' do
    operations = [3, 4, 4, 6, 1, 4, 4]
    n = 5
    expected_counters = [3, 2, 2, 4, 2]
    expect(solution(n, operations)).must_equal expected_counters
  end

  it 'correctly returns values if only maxing counter' do
    operations = [4]
    n = 3
    expected_counters = [0, 0, 0]
    expect(solution(n, operations)).must_equal expected_counters
  end

  it 'correctly returns raised counters that never have been maxed' do
    operations = [3, 4, 4, 5, 1]
    n = 5
    expected_counters = [1, 0, 1, 2, 1]
    expect(solution(n, operations)).must_equal expected_counters
  end

  it 'increses counters twice' do
    operations = [3, 4, 4, 6, 5, 6, 1]
    n = 5
    expected_counters = [4, 3, 3, 3, 3]
    expect(solution(n, operations)).must_equal expected_counters
  end
end
