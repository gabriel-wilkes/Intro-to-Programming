def swap(string)
  array = []
  array = string.split
  letter = ""
  array.each do |x|
    letter = x[-1]
    x[-1] = x[0]
    x[0] = letter
  end
  string = array.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'