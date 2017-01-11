require './max_product_of_three.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include MaxProductOfThree

describe MaxProductOfThree do
  it 'returns correct result for positive elements' do
    array = [2, 1, 2, 2, 5, 6]
    expected_result = 60
    expect(solution(array)).must_equal expected_result
  end

  it 'returns correct result for all negative input' do
    array = [-2, -1, -2, -2, -5, -6]
    expected_result = -4
    expect(solution(array)).must_equal expected_result
  end

  it 'correctly returns result for all equal elements' do
    array = [-2, -2, -2]
    expected_result = -8
    expect(solution(array)).must_equal expected_result
  end

  it 'correctly returns result for mixed input' do
    array = [-2, -2, -2, -5, -10, -3, 0, 1, 2, 3]
    expected_result = 150
    expect(solution(array)).must_equal expected_result
  end
end
