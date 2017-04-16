x = 0
proc = ->{ x += 1; x }
proc.call # => 1
proc.call # => 2
x         # => 2

# def counter
#   x = 0
#   ->{ x += 1; x }
# end

# proc = counter
# proc.call #=> 1
# proc.call #=> 2

def foo
  yield
end

x = 1
foo do
  x = "hello"
end
x # : Int32 | String

x = 1
foo do
  x = "hello"
end
x # : Int32 | String

x = 'a'
x # : Char

def capture(&block)
  block
end

x = 1
->{ x = "hello" }

x = 'a'
x # : Int32 | String | Char
