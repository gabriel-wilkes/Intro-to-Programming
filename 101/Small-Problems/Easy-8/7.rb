def repeater(string)
  count = 0
  return_size = string.size * 2
  while count < return_size
    string.insert(count, string[count])
    count += 2
  end
  string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''