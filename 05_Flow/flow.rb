#2
def uppercase(in_string)
  if in_string.length > 10
    return in_string.upcase
  else
    return in_string
  end
end

#3
def range_find(num)
  if 0 <= num <= 50
    return "Between 0-50"
  elsif 51 <= num <= 100
    return "Between 51-100"
  else
    return "Above 100"
  end
end

