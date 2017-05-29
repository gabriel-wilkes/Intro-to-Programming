def oddities(array)
  result_array = []
  array.map.with_index do |x, i|
    result_array << x if (i + 1).odd?
  end
  result_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
