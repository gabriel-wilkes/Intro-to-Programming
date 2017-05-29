def count_occurrences(vehicles)
  vehicle_hash = {}
  vehicles.each do |vehicle|
    vehicle_hash["#{vehicle}"] = vehicles.count(vehicle)
  end
  vehicle_hash.each do |k,v|
    puts "#{k} => #{v}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)