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

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']