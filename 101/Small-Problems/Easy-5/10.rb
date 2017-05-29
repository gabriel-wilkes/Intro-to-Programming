def print_in_box(string)
  print "+-" 
  string.length.times do
    print "-"
  end

  print "-+\n| "
  string.length.times do
    print " "
  end

  print " |\n| " + string + " |\n| "
  string.length.times do
    print " "
  end

  print " |\n+-"
  string.length.times do
    print "-"
  end
  puts "-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')