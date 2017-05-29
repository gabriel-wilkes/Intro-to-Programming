puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
selection = gets.chomp
result = 0
if selection == "s"
  num.times do |x|
    result += (x + 1)
  end
  puts "The sum of the integers between 1 and #{num} is #{result}."
else
  result = 1
  (num - 1).times do |x|
    result *= (x + 2)
  end
  puts "The product of the integers between 1 and #{num} is #{result}."
end