def substrings_at_start(string)
  array = string.split(//)
  array.map!.with_index do |x, i|
    if i == 0
      x
    else
      array[i - 1] + x
    end
  end
end

def substrings(string)
  array = []
  string.size.times do |x|
    array << substrings_at_start(string)
    string[0] = ""
  end
  array.flatten!
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]