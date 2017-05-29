hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

p hash1
p hash2

# The output will be that the hashes are the same, this is the output:
# These hashes are the same!
# {:shoes=>"nike", "hat"=>"adidas", :hoodie=>true}
# {"hat"=>"adidas", :shoes=>"nike", :hoodie=>true}
# Note that although the order is different between the hashes they are equal
# when using the comparison operator. 