# Q1
10.times { |time| puts (' ' * time) + 'The Flintstones Rock!' }

# Q2
# The error is caused by attempting to add a number to a string without first converting the number to a string
# 2 possible fixes:
puts "the value of 40 + 2 is #{(40 + 2)}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Q3
while dividend > 0
  divisors << number / dividend if number % dividend == 0
  dividend -= 1
end 

# Q4
# It depends on the circumstances, 
# I would prefer << if I needed to mutate the buffer that is passed to the method.
# + would be better if I wanted to return a new array.

# Q5
# The problem is that limit variable is declared outside the scope of the fib method
LIMIT = 15 #This would work if changed the other reference to limit is changed to LIMIT

# Q6
def tricky_method!(a_string_param, an_array_param)
  a_string_param << "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method!(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Q7
34

# Q8
# The family data is changed because the Hash#[]= method is used which mutates the caller

# Q9
"paper"

# Q10
"no"
