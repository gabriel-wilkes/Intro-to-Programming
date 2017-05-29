puts "Please write word or multiple words:"
input = gets.chomp
output = input.split.join.size
puts "There are #{output} characters in \"#{input}\"."