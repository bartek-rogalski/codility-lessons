require './distinct.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include Distinct

describe Distinct do
  it 'correctly returns result for simple input' do
    array = [2, 4, 7, 10, 2, 13]
    expected_result = 5
    expect(solution(array)).must_equal expected_result
  end

  it 'recognizes the same number as just one' do
    array = [2, 2, 8, 2, 2, 2, 2]
    expected_result = 2
    expect(solution(array)).must_equal expected_result
  end

  it 'handles negatives and zeros' do
    array = [-2, 2, 0, 8, 2]
    expected_result = 4
    expect(solution(array)).must_equal expected_result
  end
end
