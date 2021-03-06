require './tape_equilibrium.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include TapeEquilibrium

describe TapeEquilibrium do
  it 'returns minimal difference for basic data' do
    a = [3, 1, 2, 4, 3]
    minimal_value = 1
    expect(solution(a)).must_equal minimal_value
  end

  it 'returns correct value for negative elements' do
    a = [-10, -1, -2, -4, -3]
    minimal_value = 0
    expect(solution(a)).must_equal minimal_value
  end

  it 'returns correct value for two elements' do
    a = [-1000, 1000]
    minimal_value = 2000
    expect(solution(a)).must_equal minimal_value
  end
end
