def find_fibonacci_index_by_length(num)
  current_fibonacci = 1
  previous_fibonacci = 1
  total = 0
  count = 2
  while total.to_s.size < num do 
    total = previous_fibonacci + current_fibonacci
    previous_fibonacci = current_fibonacci
    current_fibonacci = total
    count += 1
  end
  count
end



p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847