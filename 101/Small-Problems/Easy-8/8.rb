def double_consonants(string)
  count = 0
  return_size = string.size * 2
  while count < return_size
    string.insert(count, string[count])
    count += 2
  end

  skip = false
  return_string = ""
  string.each_char do |c|
    if skip == false && c.delete("^a-zA-Z").delete("aeiouAEIOU") == ""
      skip = true
    elsif skip
      skip = false
      next
    end
    return_string << c
  end
  return_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""