def century(year)
  array = []
  array = (year - 1).to_s.split(//)
  array.pop(2)
  year = array.join.to_i
  year += 1
  array = year.to_s.split(//)
  ending = ""
  if array[-2] == "1"
    ending = "th"
  elsif array[-1] == "1"
    ending = "st"
  elsif array[-1] == "2"
    ending = "nd"
  elsif array[-1] == "3"
    ending = "rd"
  else
    ending = "th"
  end
  year.to_s + ending
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'