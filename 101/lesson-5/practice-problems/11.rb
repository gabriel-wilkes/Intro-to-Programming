arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_array = arr.map do |subarr|
  subarr.reject do |int|
    int % 3 != 0
  end
end

p new_array