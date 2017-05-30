def center_of(string)
  half = string.length / 2
  if string.length.even?
    string[half - 1] + string[half]
  else
    string[half]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'