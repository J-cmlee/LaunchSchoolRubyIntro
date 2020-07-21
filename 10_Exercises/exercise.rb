arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#1.
arr.each {|value| print value}
puts ""

#2
arr.each do |value|
  print value if (value > 5)
end
puts ""

#3
new_array = arr.select{|value| value %2 == 1}
print new_array
puts ""

#4
arr.push(11)
arr.unshift(0)
print arr
puts ""

#5
arr.pop
arr.push(3)
print arr
puts ""

#6
arr = arr.uniq
print arr
puts ""

#7
#Array = index of integer values, Hash = index of key-value pairs

#8
hash1 = { key1: "value1" }
hash2 = { :key2 => "value2" }

#9
#1.
h = {a:1, b:2, c:3, d:4}
puts h[:b]
#2.
h[:e] = 5
#3.
h_new = h.delete_if {|key, value| value < 3.5}
print h_new
puts ""

#10
#Hash of arrays = {sample1: [1,2,3]}
#Array of Hashes = [{a:1},{b:2}]

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

#12
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

#13
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.start_with?("s")}
puts arr

#14
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map {|ele| ele.split}
a = a.flatten
print a

#15
#They are the same

#16
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), index|
  fields.each do |field|
    hash[field] = contact_data[index].shift
  end
end

puts contacts