# https://codility.com/programmers/lessons/4-counting_elements/max_counters/
module MaxCounters
  def solution(n, operations)
    counters = Array.new(n, 0)
    biggest_value = 0
    operations.each do |modication|
      element = modication - 1
      if modication > n
        counters.map! { biggest_value }
      else
        counters[element] += 1
        biggest_value = counters[element] if counters[element] > biggest_value
      end
    end
    counters
  end
end
