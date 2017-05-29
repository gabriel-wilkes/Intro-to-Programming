def integer_to_string(num)
  conv = {0 => "0",
          1 => "1",
          2 => "2",
          3 => "3",
          4 => "4",
          5 => "5",
          6 => "6",
          7 => "7",
          8 => "8",
          9 => "9"}
  array = []      
  array = num.digits
  num_array = []
  array.each do |x|
    num_array.unshift(x) 
  end
  num_array.map! do |x|
    conv[x]
  end
  num = num_array.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'