def buy_fruit(arr)
  new_arr = []
  arr.each do |group|
    group[1].times { |_| new_arr << group[0] }
  end
  new_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]