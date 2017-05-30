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

def palindromes(string)
  array = substrings(string)
  array.map! do |x|
    x if x == x.reverse
  end
  array.delete_if do |x|
    x.nil? || x.size == 1
  end
  array
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]