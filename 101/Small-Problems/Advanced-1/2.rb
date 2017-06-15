def star(num)
  arr = (1..num).map { " " }
  mid = num / 2
  arr[mid] = "*"
  num.times do |time|
    arr[time] = "*"
    arr[-time - 1] = "*"
    if time == mid
      num.times { print "*" }
    else
      arr.each { |element| print element }
      arr[time] = " "
      arr[-time - 1] = " "
    end
    puts
  end
end

star(7)
star(9)
star(81)