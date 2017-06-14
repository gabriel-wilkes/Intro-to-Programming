def fibonacci_last(num)
  return 1 if num <= 2
  sum = 0
  one_back = 1
  two_back = 1
  num %= 60
  (num-2).times do |time|
    sum = one_back + two_back
    two_back = one_back
    one_back = sum
    sum %= 10
  end
  sum
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
p fibonacci_last(123456789987745) # -> 5