def average(array)
  avg = 0
  array.each do |num|
    avg += num
  end
  avg /= array.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40