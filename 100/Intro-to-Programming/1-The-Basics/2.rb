number = 4567
thousand = number / 1000
hundred = ( number % 1000 ) / 100
ten = ( number % 100 ) / 10
one = number % 10 

puts "Number is #{number}"
puts "Thousands place is #{thousand}"
puts "Hundreds place is #{hundred}"
puts "Tens place is #{ten}"
puts "Ones place is #{one}"