a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

new_array = []

a.each do |words|
  new_array << words.split
end

new_array.flatten!

p new_array