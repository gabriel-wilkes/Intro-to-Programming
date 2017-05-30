def interleave(array1, array2)
  array1.each_index do |i|
    array2.insert(i * 2, array1[i])
  end
  array2
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']