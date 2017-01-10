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
end
