def sum_square_difference(num)
  nums = (1..num).map
  difference = nums.map do |x|
    x ** 2
  end
  nums.sum ** 2 - difference.sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150