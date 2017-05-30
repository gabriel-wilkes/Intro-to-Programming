def triangle(num)
  num.times do |x|
    (num - 1 - x).times { print " " }
    (x + 1).times { print "*" }
    puts
  end
end

triangle(5)
triangle(9)