def time_of_day(num)
  hour = 0
  minutes = 0

  while num < 0 do 
    num += 1440
  end

  if num > 1440
    num %= 1440
  end

  hour = (num / 60)
  minutes = (num % 60)
  hour = hour.to_s
  minutes = minutes.to_s

  if hour.length == 1
    hour = "0" + hour
  end
  if minutes.length == 1
    minutes = "0" + minutes
  end
  "#{hour}:#{minutes}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"