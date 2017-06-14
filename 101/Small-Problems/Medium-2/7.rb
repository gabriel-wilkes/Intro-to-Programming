require 'date'

def friday_13th(year)
  f13_count = 0
  current_day = Date.new(year)
  365.times do |time|
    if current_day.friday? && current_day.day == 13
      f13_count += 1
    end
    current_day += 1
  end
  f13_count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
