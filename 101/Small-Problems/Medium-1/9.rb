def fibonacci(num)
  return 1 if num <= 2
  sum = 0
  one_back = 1
  two_back = 1
  (num-2).times do |time|
    sum = one_back + two_back
    two_back = one_back
    one_back = sum
  end
  sum
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501