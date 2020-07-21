arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#3
new_array = arr.select{|value| value %2 == 1}
print new_array