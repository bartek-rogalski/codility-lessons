# https://codility.com/programmers/lessons/4-counting_elements/max_counters/
module MaxCounters
  def solution(n, operations)
    counters = Array.new(n, 0)
    biggest_value = 0
    smallest_value = 0

    operations.each do |modification|
      element = modification - 1
      if modification == n + 1
        smallest_value = biggest_value
      else
        counters[element] = smallest_value if counters[element] < smallest_value
        counters[element] += 1
        biggest_value = counters[element] if counters[element] > biggest_value
      end
    end

    (0..counters.length - 1).each do |ind|
      counters[ind] = smallest_value if counters[ind] < smallest_value
    end
    
    counters
  end
end
