def sum(num)
  array = []
  total = 0
  array = num.to_s.split(//)
  array.each do |x|
    total += x.to_i
  end
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45