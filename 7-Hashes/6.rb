words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

sorted = []

words.each do |word|
  sorted << word.chars.sort.join
end

new_key = {}

sorted.uniq.map do |uniq_word|
  new_key[uniq_word] = []
  sorted.map.with_index do |word, index|
    if uniq_word == word
      new_key[uniq_word].push(index) 
    end
  end
end

new_key.each do |key, value|
  value.each do |x|
    print "#{words[x]} "
  end
  puts
end
