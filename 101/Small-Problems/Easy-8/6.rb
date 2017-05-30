def fizzbuzz(x, y)
  (y - x + 1).times do |t|
    if ((t + x) % 5 == 0) && ((t + x) % 3 == 0)
      puts "FizzBuzz"
    elsif (t + x) % 3 == 0
      puts "Fizz"
    elsif (t + x) % 5 == 0
      puts "Buzz"
    else
      puts t + x
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz