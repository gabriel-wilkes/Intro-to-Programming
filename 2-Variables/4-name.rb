puts "Please enter your first name:"
first_name = gets.chomp
puts "Please enter your last name:"
last_name = gets.chomp
puts "Hello #{first_name} #{last_name}!"

10.times do 
  puts first_name + " " + last_name
end
