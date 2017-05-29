def after_midnight(string)
  num = convert_time(string)
  return 0 if num == 1440
  num
end

def before_midnight(string)
  num = convert_time(string)
  return 0 if num == 0
  num -= 1440
  num *= -1
end

def convert_time(string)
  array = []
  array = string.split(//)
  hour = array[1].to_i + (10 * array[0].to_i)
  minutes = array[4].to_i + (10 * array[3].to_i)
  minutes += (hour * 60)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0