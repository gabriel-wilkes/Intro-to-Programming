def halvsies(array)
  length1 = 0
  length2 = 0
  length2 = array.size / 2
  length1 = array.size - length2
  array2 = []
  until array.size == length1
    array2.unshift(array.pop)
  end
  [array, array2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]