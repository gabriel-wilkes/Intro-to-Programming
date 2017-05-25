hash1 = { name: "Dave", age: 99, weight: 280 }
hash2 = { name: "Buster", age: 105, height: 180}

print "hash1 is: "
p hash1
print "hash2 is: "
p hash2
puts

result = hash1.merge(hash2)
puts "Result of using merge method 'hash1.merge(hash2)': "
print "Return value is: "
p result
print "hash1 is: "
p hash1
print "hash2 is: "
p hash2
puts

result = hash1.merge!(hash2)
puts "Result of using merge method 'hash1.merge!(hash2)': "
print "Return value is: "
p result
print "hash1 is: "
p hash1
print "hash2 is: "
p hash2
puts