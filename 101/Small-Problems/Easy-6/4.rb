def reverse!(array)
  temp_array = []
  temp_array = array.map.with_index do |x, i|
    array[-1 - i]
  end
  array.map!.with_index do |x, i|
    temp_array[i]
  end
  array
end

p list = [1,2,3,4]
p result = reverse!(list) #=> [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b c d e)
p reverse!(list)  #=> ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

p list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]

p list = []
p reverse!(list) # => []
p list == []