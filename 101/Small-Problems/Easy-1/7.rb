def stringy(num)
  string = ""
  num.times do |x|
    bit = (x + 1) % 2
    string << bit.to_s
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'