# Can hash values be arrays? Can you have an array of hashes? 
# Yes and yes. Here are the examples:

hash = {key: [1,2,3], key2: [4,5,6]}
p hash

array = [hash, {color: "blue", size: 3}]
p array