# 一个方法可以通过使用一个splat（*）来接收可变数量的参数，该函数只能出现一次，并且位于任何位置：

def sum(*elements)
  total = 0
  elements.each do |value|
    total += value
  end
  total
end

# elements is Tuple(Int32, Int32, Int32)
puts sum 1, 2, 3 # => 6
# elements is Tuple(Int32, Int32, Int32, Float64)
puts sum 1, 2, 3, 4.5 # => 10.5

# def sum(*elements, initial = 0)
#   total = initial
#   elements.each do |value|
#     total += value
#   end
#   total
# end

# puts sum 1, 2, 3              # => 6
# puts sum 1, 2, 3, initial: 10 # => 16

# def sum(*elements, initial)
#   total = initial
#   elements.each do |value|
#     total += value
#   end
#   total
# end

# sum 1, 2, 3              # Error, missing argument: initial
# sum 1, 2, 3, initial: 10 # => 16

# # 具有不同所需命名参数的两种方法在彼此之间重载：
# def foo(*elements, x)
#   1
# end

# def foo(*elements, y)
#   2
# end

# foo x: "something" # => 1
# foo y: "something" # => 2

# def foo(x, y, *, z)
# end

# foo 1, 2, 3    # Error, wrong number of arguments (given 3, expected 2)
# foo 1, 2       # Error, missing argument: z
# foo 1, 2, z: 3 # OK

# A Tuple can be splat into a method call by using *


def foo(x, y)
  x + y
end

tuple = {1, 2}
foo *tuple # => 3


def foo(x, **other)
  # return NamedTuple
  other
end

foo 1, y: 2, z: 3    # => {y: 2, z: 3}
foo y: 2, x: 1, z: 3 # => {y: 2, z: 3}

# A NamedTuple can be splat into a method call by using **:

def foo(x, y)
  x - y
end

tuple = {y: 3, x: 10}
foo **tuple # => 7
