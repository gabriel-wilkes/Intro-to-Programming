puts "How old are you?"
age = gets.chomp.to_i
years = 0
4.times do 
  age += 10
  years += 10
  puts "In #{years} years you will be #{age}!"
end