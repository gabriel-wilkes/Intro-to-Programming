def sum_of_sums(array)
  array.map!.with_index do |x, i|
    if i == 0
      x
    else
      x + array[i - 1]
    end
  end
  total = 0
  array.each do |x|
    total += x
  end
  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35