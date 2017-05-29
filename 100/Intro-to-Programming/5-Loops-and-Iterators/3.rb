array = ["Hello" , 4 , 23.5 , [6 , "bye"]]
array.each_with_index {|item, index|
  puts "Index:#{index} Item:#{item}"
}