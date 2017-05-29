def reverse_sentence(sentance)
  array = sentance.split
  array.map! do |word|
    word.reverse! if word.size >= 5
  end
  array.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'