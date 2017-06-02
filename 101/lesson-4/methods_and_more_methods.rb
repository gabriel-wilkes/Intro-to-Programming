# 1
# The last statement in the block is a string which is always truthy therefore all elements are selected
[1 ,2, 3]

# 2
# I checked the ruby docs and if the block returns true the element is counted

# 3
# The return value of reject is the new array [1, 2, 3] because reject returns a new array with values where the block returns are falsey. puts always returns nil so all elements in the array are selected

# 4
# The reason the below is returned is that the .each_with_object method was specified to return a hash object. value[0] in this case selects the first char of the strings in the array and it is specified as the key to the hash
{ 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }

# 5 
# Shift removes the first key-value pair from the hash and returns a two item array. This can be learned from the docs

# 6
# 11 is returned becuase pop removes the last element and returns it. The return value of 'caterpillar' is chained to .size and that returns 11
11

# 7
# The return value of true is determined by if the block ever returns true over the entire collection. Here it does that on the first element of 1 as it is odd so num.odd? is true
true

# 8
# Array#take returns the number of elements for the array specified in the arguement. It starts from the beginning of the array and is not destructive according to the docs

# 9
# The return value is [nil, 'bear'] because map always returns an array if a block is given. nil is first as that is the return value of the if statement when it false for 'ant'. Next, 'bear' is true for the if statement so value is returned to the array
[nil, 'bear']

# 10
# There is a side effect of this block of printing 2 and 3 to screen but return is [1, nil, nil] as the puts statements actually return nil
[1, nil, nil]