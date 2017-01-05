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
    expect(solution(sequence, p, q)).must_equal expected_result
  end

  it 'returns result for a single-nucleotide query' do
    sequence = 'CAGCCTA'
    p = [2]
    q = [2]
    expected_result = [3]
    expect(solution(sequence, p, q)).must_equal expected_result
  end

  it 'returns result for a two-nucleotide query' do
    sequence = 'AACTGA'
    p = [3]
    q = [4]
    expected_result = [3]
    expect(solution(sequence, p, q)).must_equal expected_result
  end

  it 'returns result for several single-nucleotide queries' do
    sequence = 'CAGCCTA'
    p = [2, 3, 6]
    q = [2, 3, 6]
    expected_result = [3, 2, 1]
    expect(solution(sequence, p, q)).must_equal expected_result
  end

  it 'returns result for all-the-same nucleotide sequence' do
    sequence = 'CCCCCCC'
    p = [0, 3, 5]
    q = [1, 4, 6]
    expected_result = [2, 2, 2]
    expect(solution(sequence, p, q)).must_equal expected_result
  end
end
