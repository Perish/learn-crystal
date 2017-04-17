# The sizeof expression returns an Int32 with the size in bytes of a given type. For example:
puts sizeof(Int32) # => 4
puts sizeof(Int64) # => 8

# On a 64 bits machine
puts sizeof(Pointer(Int32)) #=> 8
puts sizeof(String)         #=> 8

a = 1
puts sizeof(typeof(a)) #=> 4

# instance_sizeof
# The instance_sizeof expression returns an Int32 with the instance size of a given class. For example:
class Point
  def initialize(@x : Int32, @y : Int32)
  end
end

Point.new 1, 2

# 2 x Int32 = 2 x 4 = 8
puts instance_sizeof(Point) #=> 12

# Uninitialized variable declaration
# Crystal allows declaring uninitialized variables:
x = uninitialized Int32
puts x #=> some random value, garbage, unreliable