#1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
family_arr = family.select{ |k,v| (k == :sisters) || (k == :brothers) }
family_arr = family_arr.values.flatten
puts family_arr

#3
family.each_key do |k|
  puts k
end

family.each_value do |v|
  puts v
end

family.each do |k,v|
  puts "#{k}, #{v.flatten}"
end

#4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

#8
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

result_keys = {}
words.each do |word|
  key = word.split('').sort.join
  if result_keys.has_key?(key)
    result_keys[key].push(word)
  else
    result_keys[key] = [word]
  end
end

puts result_keys
result_keys.each_value do |ele|
  puts ele
  puts "===="
end