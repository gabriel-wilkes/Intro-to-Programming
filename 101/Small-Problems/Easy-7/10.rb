def penultimate(string)
  array = string.split
  array[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'