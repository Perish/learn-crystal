def capture(&block)
  block
end

def invoke(&block)
  block.call
end

proc = capture { puts "hello" }
invoke(&proc) # prints "Hello"

# You can actually pass a proc to a method that yields:

def twice
  yield
  yield
end

# 1
proc = capture { puts "Hello" }
twice &proc
# 2
proc = capture { puts "Hello" }
twice do
  proc.call
end
# 3
twice &->{ puts "Hello" }

# 4
def say_hello
  puts "Hello"
end

twice &->say_hello

# Forwarding non-captured blocks
def foo
  yield 1
end

def wrap_foo
  puts "Before foo"
  foo do |x|
    yield x
  end
  puts "After foo"
end

wrap_foo do |i|
  puts i
end

# Output:
# Before foo
# 1
# After foo

def foo
  yield 1
end

def wrap_foo(&block : Int32 -> _)
  puts "Before foo"
  foo(&block)
  puts "After foo"
end

wrap_foo do |i|
  puts i
end

# Output:
# Before foo
# 1
# After foo
