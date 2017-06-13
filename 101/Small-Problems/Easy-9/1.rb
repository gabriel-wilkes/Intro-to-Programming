def greetings(arr, hsh)
  name = arr.join(' ')
  "Hello, #{name}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around.“"
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
