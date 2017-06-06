hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |k, v|
  v.each do |x|
    puts x.delete("^aeiou")
  end
end
