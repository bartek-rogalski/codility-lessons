# https://codility.com/programmers/lessons/5-prefix_sums/genomic_range_query/
module GenomicRangeQuery
  def solution(sequence, p, q)
    impact = { 'A' => 0, 'C' => 1, 'G' => 2, 'T' => 3}
    #sequence.map!{ |nucl| impact[nucl] }
    counter = {'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0}
    counters = []
    results = []

    sequence.each_char.with_index do |nucl, indx|
      unless counters[indx - 1].nil?
        counters[indx] = counters[indx - 1].dup 
      else
        counters[indx] = counter.dup
      end
      counters[indx][nucl] += 1
    end

    p.each_with_index { |first, indx| 
      last = q[indx]
      a = counters[last]['A'] - counters[first]['A']
      c = counters[last]['C'] - counters[first]['C']
      g = counters[last]['G'] - counters[first]['G']
      t = counters[last]['T'] - counters[first]['T']
      unless a.zero?
        results << 1
        next
      end
      unless c.zero?
        results << 2
        next
      end
      
      unless g.zero?
        results << 3
        next
      end
      
      results << 4
    }
    results
  end
end
