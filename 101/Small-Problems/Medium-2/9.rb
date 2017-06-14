def bubble_sort!(arr)
  loop do 
    swapped = false
    arr.each_with_index do |element, idx|
      unless idx == 0
        if arr[idx-1] > arr[idx]
          swap = arr[idx]
          arr[idx] = arr[idx-1]
          arr[idx-1] = swap
          swapped = true
        end
      end
    end
    break unless swapped
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
