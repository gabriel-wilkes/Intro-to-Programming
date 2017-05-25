contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contact_methods = [:email, :address, :telephone]
count = 0
contacts.each do |k,v|
  contact_methods.map.with_index do |method, index|
    contacts[k][method] = contact_data[count][index]
  end
  count += 1
end

p contacts