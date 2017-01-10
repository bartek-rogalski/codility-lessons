# https://codility.com/programmers/lessons/6-sorting/max_product_of_three/
module MaxProductOfThree
  def solution(array)
    max1 = -1_000
    max2 = -1_000
    max3 = -1_000
    
    array.each do |element|
      print "element #{element}\n"
      if element > max1
        print "bigger than max1!\n"
        max3 = max2
        max2 = max1
        max1 = element
        next
      end
      if element > max2
        print "bigger than max2!\n"
        max3 = max2
        max2 = element
        next
      end
      if element > max3
        print "bigger than max3!\n"
        max3 = element
      end
    end

    max1 * max2 * max3
  end
end
