require './tape_equilibrium.rb'
require 'minitest/autorun'
include TapeEquilibrium

describe TapeEquilibrium do
  it 'returns minimal difference for basic data' do
    a = [3, 1, 2, 4, 3]
    minimal_value = 1
    expect(solution(a)).must_equal minimal_value
  end

  it 'returns correct value for negative elements' do
    a = [-10, 1, 2, 4, 3]
    minimal_value = 13
    expect(solution(a)).must_equal minimal_value
  end

  it 'returns correct value for two elements' do
    a = [100, 1000]
    minimal_value = 900
    expect(solution(a)).must_equal minimal_value
  end
end
