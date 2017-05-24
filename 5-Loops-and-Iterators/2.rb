while true do
  puts "Enter a food you like:"
  input = gets.chomp
  if input == "STOP"
    break
  end
  puts "I like #{input} too!"
end