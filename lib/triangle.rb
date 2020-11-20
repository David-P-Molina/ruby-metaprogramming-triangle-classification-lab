require "pry"
class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3, :equilateral, :isosceles, :scalene
  def initialize(s1,s2,s3)
    @s1= s1
    @s2 = s2 
    @s3 = s3
  end
  
  def kind
          if (s1 <= 0) || (s2 <= 0) || (s3 <= 0)
            raise TriangleError
          elsif (s1 + s2 <= s3) || (s2 + s3 <= s1)  || (s1 + s3 <= s2)
            raise TriangleError
          elsif s1 == s2 && s2 == s3 && s1 > 0
           :equilateral
         elsif (s2 == s3 && s1 > 0 && s3 > 0) || (s1 == s2 && s1 > 0 && s3 > 0 ) || (s3 == s1 && s1 > 0 && s3 > 0 )
           :isosceles
         elsif (s1 != s2 && s2 != s3 && s1 != s3)
           :scalene
          # binding.pry
         end
  end
  class TriangleError < StandardError
    def message
    end
  end

end

