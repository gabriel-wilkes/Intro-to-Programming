puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
percent = gets.chomp.to_f
puts
tip = percent / 100 * bill
puts "The tip is $#{tip}"
puts "The total is $#{tip + bill}"