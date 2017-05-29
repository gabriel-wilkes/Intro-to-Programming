def down_to_zero(num)
  puts num
  if num > 0 
    down_to_zero(num-1)
  end
end

down_to_zero(10)