#11
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

def convert_to_hash(in_array)
  out_hash = Hash.new
  for i in 0..2
    case i
    when 0 then out_hash[:email] = in_array[i]
    when 1 then out_hash[:address] = in_array[i]
    when 2 then out_hash[:phone] = in_array[i]
    else
      "Error"
    end
  end
  return out_hash
end

contacts["Joe Smith"] = convert_to_hash(contact_data[0])
contacts["Sally Johnson"] = convert_to_hash(contact_data[1])

print contacts
puts ""