puts "Please enter a number from 0 to 100:"
number = gets.chomp.to_i

if number < 0
    puts "Your number is negative, follow the rules"
elsif number <= 50
    puts "Your number is between 0 to 50"
elsif number <= 100
    puts "Your number is between 51 to 100"
elsif number > 100
    puts "Your number is above 100"
end