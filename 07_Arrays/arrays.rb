#1
arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(number)

#2
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

#3
arr = [["test", "hello", "world"],["example", "mem"]]
puts arr[1][0]

#4
#1. 6
#2. Error?
#3. 8

#5
#a = "e"
#b = "A"
#c = nil

#7
arr.each_with_index do | ele, index |
  puts "#{index}, #{ele}"
end

new_array = arr.map do |ele|
  ele +2
end