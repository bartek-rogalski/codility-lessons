# https://codility.com/programmers/lessons/5-prefix_sums/min_avg_two_slice/
module MinAvgTwoSlice
  def solution(array)
    smallest_avg = 10_000
    smallest_index = 0
    (0..array.length - 3).each do |elem|
      two_avg = (array[elem] + array[elem + 1]).to_f / 2
      three_avg = (array[elem] + array[elem + 1] + array[elem + 2]).to_f / 3
      if (two_avg < smallest_avg) || (three_avg < smallest_avg)
        two_avg < three_avg ? smallest_avg = two_avg : smallest_avg = three_avg
        smallest_index = elem
      end
    end

    last_pair = (array[-1] + array[-2]) / 2
    if last_pair < smallest_avg
      smallest_avg = last_pair
      smallest_index = array.length - 2
    end

    smallest_index
  end
end
