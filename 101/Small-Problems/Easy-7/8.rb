def multiply_list(array1, array2)
  array1.map!.with_index do |x, i|
    x *= array2[i]
  end
  array1
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]