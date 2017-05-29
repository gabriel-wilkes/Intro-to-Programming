def multisum(num)
  new_num = 0
  num.times do |x|
    if (x + 1) % 3 == 0
      new_num += (x + 1)
    elsif (x + 1) % 5 == 0
      new_num += (x + 1)
    end
  end
  new_num
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168