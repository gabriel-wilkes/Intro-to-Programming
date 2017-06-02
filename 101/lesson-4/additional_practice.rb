# 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index do |person, index|
  flintstones_hash[person] = index
end

# 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_age = ages.values.sum

# 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if { |k, v| v > 100 }
 
# 4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
minimum_age = ages.values.min

# 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index { |name| name[0, 2] == 'Be' }

# 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name[0, 3] }

# 7
statement = "The Flintstones Rock"
statement.chars.each_with_object({}) do |char, hash|
  hash[char] = statement.count(char)
end

# 8
# First we shouldn't modify the array while we are iterating over it, unexpected things can happen
# The output will be:
1
3
numbers == [3, 4]

# Also shouldn't do this, output will be:
1
2
numbers == [1, 2]

# 9
words = "the flintstones rock"
words.split.map { |word| word.capitalize }.join(' ')

# 10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
munsters.values.each do |value|
  if (0..17).include?(value["age"])
    value["age_group"] = "kid"
  elsif (18..64).include?(value["age"])
    value["age_group"] = "adult"
  else
    value["age_group"] = "senior"
  end
end

