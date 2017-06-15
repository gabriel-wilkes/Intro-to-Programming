def my_method(array)
  if array.empty?
    []
# elsif                   <- Previous buggy line
  elsif array.size > 1  # <- New fixed line
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# The elsif statement was incomplete. The reason the buggy results were printed is that array.map was evaluated 
# as the conditional for the elsif. In this case it will always return an array which evaulates to true.
# However, after the array.map there was no other statements in the elsif branch. No code is the same as nil and
# so nil is returned.