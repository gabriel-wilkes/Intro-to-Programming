1. a method that returns the sum of two integers

START

# Given two integers

SET sum = integer1 + integer2

PRINT sum

END

2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

START

# Given an array of strings

SET return_string = call method on array that joins string elements into one string

PRINT return_string

END

3. a method that takes an array of integers, and returns a new array with every other element

START

# Given a array of integers

SET iterator = 0

WHILE iterator < length of array
  IF interator value is even
    SET Push current array value in iteration to new_array

  iterator = iterator + 1

PRINT new_array

END