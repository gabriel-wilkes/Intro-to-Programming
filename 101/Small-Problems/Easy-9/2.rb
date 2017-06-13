def twice(num)
  num_str = num.to_s
  num_size = num_str.size
  if num_size.even?
    half = num_size / 2
    num_str_2 = num_str.slice!(half..num_size)
    return num if num_str == num_str_2  
  end
  num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10