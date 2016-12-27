require './count_div.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include CountDiv

describe CountDiv do
  it 'correctly returns result for simple input' do
    a = 0
    b = 11
    div = 2
    expected_result = 6
    expect(solution(a, b, div)).must_equal expected_result
  end

  it 'correctly returns result if begining of range is not divisible' do
    a = 5
    b = 11
    div = 2
    expected_result = 3
    expect(solution(a, b, div)).must_equal expected_result
  end

  it 'correctly returns result for maximum divisor' do
    a = 1
    b = 16
    div = 16
    expected_result = 1
    expect(solution(a, b, div)).must_equal expected_result
  end

  it '' do
    a = 11
    b = 345
    div = 17
    expected_result = 20
    expect(solution(a, b, div)).must_equal expected_result
  end
end
