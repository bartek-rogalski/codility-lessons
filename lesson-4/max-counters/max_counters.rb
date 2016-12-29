# https://codility.com/programmers/lessons/4-counting_elements/max_counters/
module MaxCounters
  def solution(n, operations)
    counters = Array.new(n, 0)
    biggest_value = 0
    smallest_value = 0

    operations.each do |modification|
      if modification == n + 1
        smallest_value = biggest_value
      else
        element = modification - 1
        value = counters[element]
        if value < smallest_value
          new_value = smallest_value + 1
        else
          new_value = value + 1
        end
        counters[element] = new_value
        biggest_value = new_value if new_value > biggest_value
      end
    end

    (0..counters.length - 1).each do |ind|
      counters[ind] = smallest_value if counters[ind] < smallest_value
    end

    counters
  end
end
