def running_total(array)
  array.map!.with_index do |x, i|
    if i == 0
      x
    else
      x += array[i - 1] 
    end
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []