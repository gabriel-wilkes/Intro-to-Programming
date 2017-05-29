numbers = ["1st","2nd","3rd","4th","5th","last"]
replies = []
numbers.each do |number|
  puts "Enter the #{number} number:"
  replies << gets.chomp.to_i
end
last = replies.pop
if replies.include?(last)  
  puts "The number #{last} appears in #{replies}."
else
  puts "The number #{last} does not appear in #{replies}."
end
