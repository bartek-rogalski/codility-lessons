# https://codility.com/programmers/lessons/5-prefix_sums/genomic_range_query/
module GenomicRangeQuery
  def solution(sequence, p, q)
    impact = { 'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4}
    counters = []
    results = []

    sequence.each_char.with_index do |nucl, indx|
      if indx != 0
        counters[indx] = counters[indx - 1].dup
      else
        counters[indx] = {'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0}
      end
      counters[indx][nucl] += 1
    end

    p.each_with_index do |first, indx| 
      last = q[indx]
      # print "\n\nNEW QUERY\n\n"
      # puts last
      # puts first
      # print "\n-------------"
      if last != first
        impact.each do |nucl, imp|
          # print "\n\n\nNUCL " + nucl + "\n"
          # puts 'last'
          # puts counters[last][nucl]
          # puts 'first'
          # puts counters[first][nucl]
          if ((counters[last][nucl] - counters[first][nucl]) != 0)
            print "\n\n whoa NOT ZERO"
            puts imp
            results << imp
            break
          end
        end
      else
        results << impact[sequence[first]]
      end
    end
    results
  end
end
