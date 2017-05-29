def reverse_words(sentance)
  array = sentance.split
  array.map! do |word|
    word.size >= 5 ? word.reverse! : word
  end
  array.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS