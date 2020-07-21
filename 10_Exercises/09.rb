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