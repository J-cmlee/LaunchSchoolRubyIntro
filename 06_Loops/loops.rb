#1
#[1,2,3,4,5]

#2
user_input = nil
while user_input != "STOP" do
  user_input = gets.chomp
  puts "Please enter STOP"
end

def countdown(start_value)
  if start_value <= 0
    puts start_value
  else
    puts start_value
    puts countdown(start_value-1)
  end
end

countdown(10)