def string_to_signed_integer(string)
  conv = {"0" => 0,
          "1" => 1,
          "2" => 2,
          "3" => 3,
          "4" => 4,
          "5" => 5,
          "6" => 6,
          "7" => 7,
          "8" => 8,
          "9" => 9,
          "-" => "-",
          "+" => "+"}
  array = []
  array = string.split(//)
  array.map! do |x|
    conv[x]
  end
  num = 0
  negative = false
  array.map.with_index do |x, i|
    if x == "+"
      next
    elsif x == "-"
      negative = true
    else
      num += x * (10 ** (array.size - (i + 1)))      
    end
  end
  if negative == true
    num *= -1
  end
  num
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100