def signed_integer_to_string(num)
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
  negative = false
  if num < 0
    negative = true 
    num *= -1
  elsif num == 0
    return "0"
  end
  array = []      
  array = num.digits
  num_array = []
  array.each do |x|
    num_array.unshift(x) 
  end
  num_array.map! do |x|
    conv[x]
  end
  if negative
    num_array.unshift("-")
  else
    num_array.unshift("+")
  end
  num = num_array.join
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'