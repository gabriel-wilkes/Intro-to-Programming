def ascii_value(string)
  array = []
  array = string.split(//)
  array.map! do |x|
    x.ord
  end
  sum = 0
  array.each do |x|
    sum += x
  end
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0