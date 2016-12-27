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

  it 'correctly returns result for all cars going west' do
    cars = [1, 1, 1, 1, 1]
    expected_result = 0
    expect(solution(cars)).must_equal expected_result
  end

  it 'correctly returns result for all cars going east' do
    cars = [0]
    expected_result = 0
    expect(solution(cars)).must_equal expected_result
  end

end
