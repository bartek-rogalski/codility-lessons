require './tape_equilibrium.rb'
require 'minitest/autorun'
include TapeEquilibrium

describe TapeEquilibrium do
  it 'returns missing element' do
    a = [3, 1, 2, 4, 3]
    missing_element = 1
    expect(solution(a)).must_equal missing_element
  end
end
