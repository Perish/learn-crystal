puts [1, 2, 3]         # Array(Int32)
puts [1, "hello", 'x'] # Array(Int32 | String | Char)
puts [] of Int32 # same as Array(Int32).new
# []          # syntax error

# 字符串数组
%w(one two three) # ["one", "two", "three"]

# 符号数组
%i(one two three) # [:one, :two, :three]
