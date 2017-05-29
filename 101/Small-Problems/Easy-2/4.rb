require 'date'

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i
puts
year = Date.today().year.to_s.to_i 
retire_date = year + (retire_age - age)
puts "It's #{year}. You will retire in #{retire_date}."
puts "You have only #{retire_age - age} years of work to go!"