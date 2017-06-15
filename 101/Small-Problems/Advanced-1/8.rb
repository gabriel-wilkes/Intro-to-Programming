def merge(arr1, arr2)
  new_arr = []
  arr2_index = 0
  arr1.each do |element|
    while arr2_index < arr2.size && arr2[arr2_index] <= element
      new_arr << arr2[arr2_index]
      arr2_index += 1
    end
    new_arr << element
  end 
  new_arr + arr2[arr2_index..-1]
end


def merge_sort(arr)
  return arr if arr.size == 1
  new_arr1 = []
  new_arr2 = []
  half = arr.size / 2
  arr.each_with_index do |obj,idx|
    idx < half ? new_arr1 << obj : new_arr2 << obj
  end
  new_arr1 = merge_sort(new_arr1)
  new_arr2 = merge_sort(new_arr2)
  merge(new_arr1, new_arr2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

