def diamond(num)
  arr = (1..num).map { " " }
  mid = num / 2
  arr[mid] = "*"
  grow = true
  count = arr.size
  num.times do |time|
    if grow 
      arr[mid + time] = "*"
      arr[mid - time] = "*"
    else
      arr[mid - time ] = " "
      arr[time - mid - 1] = " "
    end
    arr.each { |element| print element }
    puts
    if arr[0] == "*"
      grow = false
    end
  end
end

diamond(1)
diamond(3)
diamond(9)
diamond(81)