# Tuple 元组
tuple = {1, "hello", 'x'} # Tuple(Int32, String, Char)
puts tuple
puts tuple[0]                  #=> 1       (Int32)
puts tuple[1]                  #=> "hello" (String)
puts tuple[2]                  #=> 'x'     (Char)

# To create an empty tuple use Tuple.new.
tu = Tuple.new
puts tu

# The type denoting a tuple of Int32, String and Char
Tuple(Int32, String, Char)

# An array of tuples of Int32, String and Char
Array({Int32, String, Char})

# NamedTuple 命名元组
tuple = {name: "Crystal", year: 2011} # NamedTuple(name: String, year: Int32)
puts tuple
puts tuple[:name] # => "Crystal" (String)
puts tuple[:year] # => 2011      (Int32)

# The type denoting a named tuple of x: Int32, y: String
NamedTuple(x: Int32, y: String)

# An array of named tuples of x: Int32, y: String
Array({x: Int32, y: String})

a = {"this is a key": 1}
puts a["this is a key"]