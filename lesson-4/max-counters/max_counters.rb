# https://codility.com/programmers/lessons/4-counting_elements/max_counters/
module MaxCounters
  def solution(operations, n)
    counters = Array.new(n, 0)
    biggest_value = 0
    operations.each do |modication|
      puts "new mod #{modication}"
      element = modication - 1
      print counters
      puts "\n"
      if modication > n
        print 'incement all'
        counters = Array.new(n, biggest_value)
      else
        counters[element] += 1
        biggest_value = counters[element] if counters[element] > biggest_value
      end
    end
    print counters
    counters
  end
end
