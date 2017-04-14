a = {1 => 2, 3 => 4}     # Hash(Int32, Int32)
b = {1 => 2, 'a' => 3}   # Hash(Int32 | Char, Int32)

puts a[1]
puts a[3]
puts b['a']

{} of Int32 => Int32  # same as Hash(Int32, Int32).new
# {}                   # syntax error