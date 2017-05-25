hash = { name: "Dave", age: 99, weight: 280 }

hash.each do |k,v|
  puts k
end
puts
hash.each do |k,v|
  puts v
end
puts
hash.each do |k,v|
  puts "#{k}: #{v}"
end