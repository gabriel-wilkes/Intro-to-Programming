count = 1

loop do
  break if count > 5
  puts count.odd? ? "#{count} is odd!" : "#{count} is even!"
  count += 1
end