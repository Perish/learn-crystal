# Operators like + and - are regular method calls. For example:

# a + b
# is the same as:

# a.+(b)

struct Vector2
  getter x, y

  def initialize(@x : Int32, @y : Int32)
  end

  def +(other)
    Vector2.new(x + other.x, y + other.y)
  end
end

v1 = Vector2.new(1, 2)
v2 = Vector2.new(3, 4)

puts v1 + v2

struct Vector2
  def -
    Vector2.new(-x, -y)
  end
end

v1 = Vector2.new(1, 2)
-v1 # => Vector2(@x=-1, @y=-2)

class MyArray
  def [](index)
    # ...
  end

  def [](index1, index2, index3)
    # ...
  end

  def []=(index, value)
    # ...
  end
end

array = MyArray.new

array[1]       # invokes the first method
array[1, 2, 3] # invokes the second method
array[1] = 2   # invokes the third method

array.[](1)       # invokes the first method
array.[](1, 2, 3) # invokes the second method
array.[]=(1, 2)   # invokes the third method
