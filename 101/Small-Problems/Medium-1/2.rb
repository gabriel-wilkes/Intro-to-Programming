def rotate_array(arr)
  new_arr = []
  arr.each_with_index do |_, idx|
    new_arr << arr[idx+1]
  end
  new_arr.pop
  new_arr << arr[0]
  new_arr
end

def rotate_rightmost_digits(num, digits)
  num_str = num.to_s
  num_size = num_str.size
  last_n = num_str.slice!(num_size-digits, digits)
  rotated = rotate_array(last_n.chars).join
  (num_str + rotated).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
