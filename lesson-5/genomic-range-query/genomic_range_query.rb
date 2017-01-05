# https://codility.com/programmers/lessons/5-prefix_sums/genomic_range_query/
module GenomicRangeQuery
  def solution(sequence, beginnings, ends)
    impact = { 'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4 }
    counters = []
    counters[0] = { 'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0 }
    results = []

    sequence.each_char.with_index do |nucl, idx|
      counters[idx + 1] = counters[idx].dup
      counters[idx + 1][nucl] += 1
    end

    beginnings.each_with_index do |first, idx|
      last = ends[idx]
      impact.each do |nucl, imp|
        if (counters[last + 1][nucl] - counters[first][nucl]) != 0
          results << imp
          break
        end
      end
    end

    results
  end
end
