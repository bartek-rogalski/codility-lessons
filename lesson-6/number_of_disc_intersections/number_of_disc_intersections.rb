# https://codility.com/programmers/lessons/6-sorting/number_of_disc_intersections/
module NumberOfDiscIntersections
  def solution(discs)
    intersections = 0
    active_discs = 0
    discs_count = discs.count
    last_center = discs_count - 1
    beginnings = Array.new(discs_count, 0)
    endings = Array.new(discs_count, 0)

    discs.each_with_index do |radius, center|
      starts_at = center - radius > 0 ? center - radius : 0
      ends_at = center + radius > last_center ? last_center : center + radius
      beginnings[starts_at] += 1
      endings[ends_at] += 1
    end
    
    (0..discs_count - 1).each do |point|
      if beginnings[point] > 0
        intersections += active_discs * beginnings[point]
        intersections += beginnings[point] * (beginnings[point] - 1) / 2
        return -1 if intersections > 10_000_000
        active_discs += beginnings[point]
      end
      active_discs -= endings[point]
    end

    intersections
  end
end
