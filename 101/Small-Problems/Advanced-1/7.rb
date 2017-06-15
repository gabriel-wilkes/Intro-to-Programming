def merge(arr1, arr2)
  new_arr = []
  arr1_index = 0
  arr2_index = 0
  (0...(arr1.size + arr2.size)).each do |x|
    if (arr1[arr1_index].to_i <= arr2[arr2_index].to_i && !arr1[arr1_index].nil?) || arr2[arr2_index].nil? 
      new_arr << arr1[arr1_index]
      arr1_index += 1
    else
      new_arr << arr2[arr2_index]
      arr2_index += 1
    end
  end 
  new_arr
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]