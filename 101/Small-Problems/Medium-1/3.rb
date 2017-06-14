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
downto
def max_rotation(num)
  rotations = num.to_s.size
  (rotations-1).times do |time|
    num = rotate_rightmost_digits(num, rotations - time)
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
