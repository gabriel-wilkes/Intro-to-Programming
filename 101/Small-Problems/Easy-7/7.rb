def show_multiplicative_average(array)
  num_entries = array.size
  result = 1.0
  array.each do |x|
    result *= x
  end
  result / num_entries
end

p show_multiplicative_average([3, 5])
# The result is 7.500

p show_multiplicative_average([6])
# The result is 6.000

p show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667