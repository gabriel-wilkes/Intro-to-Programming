DEGREE = "°"

def dms(num)
  degrees = num.to_i
  decimal = num - degrees
  minutes = decimal * 60
  seconds = minutes - minutes.to_i
  seconds *= 60; 
  minutes = minutes.to_i.to_s
  seconds = seconds.to_i.to_s
  minutes = "0" + minutes if minutes.size == 1
  seconds = "0" + seconds if seconds.size == 1
  "#{degrees}#{DEGREE}#{minutes}'#{seconds}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°35'59")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")