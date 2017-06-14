def triangle(s1, s2, s3)
  if s1 == s2 && s2 == s3
    return :equilateral
  elsif s1 + s2 > s3 && s2 + s3 > s1 && s1 + s3 > s2
    if s1 == s2 || s2 == s3 || s1 == s3
      return :isosceles
    else
      return :scalene
    end
  else
    return :invalid
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
