def longest_sentance(text_file)
  text = File.read(text_file)
  sentances = text.split(/[.!?]/)
  count = 0
  longest = 0
  sentances.each_with_index do |sentance, idx|
    word_count = sentance.split.count
    if word_count > count
      count = word_count
      longest = idx
    end
  end
  puts sentances[longest]
  puts
  puts "The longest sentance is #{count} words long."
  puts
end

longest_sentance('long-sentance-text-1.txt')
longest_sentance('long-sentance-text-2.txt')
