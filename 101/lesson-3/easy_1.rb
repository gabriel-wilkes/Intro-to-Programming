# Q1
1
2
2
3

# Q2
# 1. != is the not equal comparison operator 
# 2. ! in front of something switches the boolean value so that if something is false it will return true and vice versa
# 3. ! after something is a convention for method names which that the method mutates the recevier
# 4. ? before something is part of a ternary expression
# 5. ? after something is a convention for method names which that the method returns a boolean value
# 6. !! before something is the ! boolean switch twice so it will return true for anything that is true and anything false will return false

# Q3
advice.gsub!('important', 'urgent')

# Q4
numbers.delete_at(1) # This will remove 2 from the array is it deleting the value at index value 1
numbers.delete(1) # This will remove 1 from the array as it is looking for 1s in the array and deleting them

# Q5
(10..100).include?(42)

# Q6
'Four score and ' + famous_words
"Four score and #{famous_words}"

# Q7
42

# Q8
flinstones.flatten!

# Q9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")
