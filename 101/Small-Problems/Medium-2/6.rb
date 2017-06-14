def triangle(s1, s2, s3)
  tri = [s1, s2, s3]
  return :invalid if tri.include?(0) || s1 + s2 + s3 != 180
  return :right if tri.include?(90)
  return :obtuse if tri.max > 90
  return :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
