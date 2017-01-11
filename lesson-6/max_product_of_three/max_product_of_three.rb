# https://codility.com/programmers/lessons/6-sorting/max_product_of_three/
# This can be solved really, really quickly with sort!,
# but for performance's sake:
module MaxProductOfThree
  def solution(array)
    max1, max2, max3 = -1_000
    min1, min2 = 1_000

    array.each do |element|
      if element > max1
        max3 = max2
        max2 = max1
        max1 = element
      elsif element > max2
        max3 = max2
        max2 = element
      elsif element > max3
        max3 = element
      end

      if element < min1
        min2 = min1
        min1 = element
      elsif element < min2
        min2 = element
      end
    end

    max = max1 * max2 * max3
    min = min1 * min2 * max1
    return max if min < max
    min
  end
end
