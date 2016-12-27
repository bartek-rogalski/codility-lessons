# https://codility.com/programmers/lessons/5-prefix_sums/passing_cars/
module PassingCars
  def solution(cars)
    pairs = west = 0
    sums = cars.map { |car| west += car }

    cars.each_with_index do |car, ind|
      pairs += west - sums[ind] if car.zero?
      return -1 if pairs > 1_000_000_000
    end

    pairs
  end
end
