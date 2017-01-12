# https://codility.com/programmers/lessons/5-prefix_sums/min_avg_two_slice/
module MinAvgTwoSlice
  def solution(array)
    smallest_avg = 10_000
    smallest_index = 0

    (0..array.length - 3).each do |elem|
      two_sum = array[elem] + array[elem + 1]
      two_avg = two_sum / 2.0
      three_avg = (two_sum + array[elem + 2]) / 3.0
      lesser = two_avg < three_avg ? two_avg : three_avg
      if lesser < smallest_avg
        smallest_avg = lesser
        smallest_index = elem
      end
    end

    # Inspect the last pair outside the loop
    # to improve performance on large arrays
    last_pair = (array[-1] + array[-2]) / 2.0
    if last_pair < smallest_avg
      smallest_avg = last_pair
      smallest_index = array.length - 2
    end

    smallest_index
  end
end
