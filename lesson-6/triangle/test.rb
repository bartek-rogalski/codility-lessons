require './triangle.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include Triangle

describe Triangle do
  it 'recognizes triangle in arrray with positive integers' do
    array = [10, 2, 5, 1, 8, 20]
    expected_result = 1
    expect(solution(array)).must_equal expected_result
  end

  it 'does not recognize triangle in arrray with all-negative integers' do
    array = [-5, -4, -3, -1, -1, -1, -5, -6]
    expected_result = 0
    expect(solution(array)).must_equal expected_result
  end

  it 'returns 0 when no triangle present' do
    array = [-100, -50, 100]
    expected_result = 0
    expect(solution(array)).must_equal expected_result
  end
end
