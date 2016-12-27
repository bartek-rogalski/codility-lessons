require './passing_cars.rb'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

include PassingCars

describe PassingCars do
  it 'correctly returns result for simple input' do
    cars = [0, 1, 0, 1, 1]
    expected_result = 5
    expect(solution(cars)).must_equal expected_result
  end
end
