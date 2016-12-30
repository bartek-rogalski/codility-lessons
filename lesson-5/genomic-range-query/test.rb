require './genomic_range_query.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include GenomicRangeQuery

describe GenomicRangeQuery do
  it 'correctly returns result for simple input' do
    sequence = 'CAGCCTA'
    p = [2, 5, 0]
    q = [4, 5, 6]
    expected_result = [2, 4, 1]
    expect(solution(a, b, div)).must_equal expected_result
  end
end
