def merge(array1, array2)
  array1.concat(array2)
  array1.flatten!
  array1.uniq!
  array1
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]