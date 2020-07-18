#1
fullname = "John" + "Lee"

#2
def placement (number_in)
  puts "Thousands: " + (number_in / 1000).to_s
  puts "Hundreds: " + (number_in % 1000 / 100).to_s
  puts "Tens: " + (number_in %100 / 10).to_s
  puts "Ones: " + (number_in %10).to_s
end

#3
movie_hash = {
  Movie1: 2001,
  Movie2: 2002,
  Movie3: 2003
}

movie_hash.each_value {|v| puts v}

#4
movie_date_array = []
movie_hash.each_value {|v| movie_date_array << v}
movie_date_array.each {|ele| puts ele}

#5
def factorial(in_value)
  result = 1
  for i in 2..in_value
    result *= i
  end
  return result
end

for i in 5..8
  puts factorial(i)
end

#6
def squares(in_value)
  in_value **2
end

for i in 1..3
  puts squares(i/0.3)
end

#7
#Wrong ending bracket is used - should use } instead of )