contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
count = 0
contacts.each do |k,v|
  contacts[k][:email] = contact_data[count][0]
  contacts[k][:address] = contact_data[count][1]
  contacts[k][:telephone] = contact_data[count][2]
  count += 1
end

p contacts