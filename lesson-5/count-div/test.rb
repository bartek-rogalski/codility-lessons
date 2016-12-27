require './count_div.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include CountDiv

describe CountDiv do
  it 'correctly returns result for simple input' do
    a = 6
    b = 11
    div = 2
    expected_result = 3
    expect(solution(a, b, div)).must_equal expected_result
  end
end
