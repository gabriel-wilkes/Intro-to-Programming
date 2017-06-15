def madlibs(text_file)
  text = File.read(text_file)
end

madlibs('dont_worry.txt')


# EXAMPLE:
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!