# if var.is_a?(...)  判断类型，但只能对本地变量判断
a = 32
if a.is_a?(String)
  # here a is a String
end
b = "32"
if b.is_a?(Number)
  # here b is a Number
end

# a = some_condition ? 1 : "hello"
# # a : Int32 | String

# if a.is_a?(Number)
#   # a : Int32
# else
#   # a : String
# end

# if a.is_a?(String) && b.is_a?(Number)
#   # here a is a String and b is a Number
# end

# The above doesn’t work with instance variables or class variables. To work with these, first assign them to a variable:

# if @a.is_a?(String)
#   # here @a is not guaranteed to be a String
# end

# a = @a
# if a.is_a?(String)
#   # here a is guaranteed to be a String
# end

# # A bit shorter:
# if (a = @a).is_a?(String)
#   # here a is guaranteed to be a String
# end

# if var.responds_to?(...) 判断是否有这个方法

# if a.responds_to?(:abs)
#   # here a's type will be reduced to those responding to the 'abs' method
# end

# a = some_condition ? 1 : "hello"
# # a : Int32 | String

# if a.responds_to?(:abs)
#   # here a will be Int32, since Int32#abs exists but String#abs doesn't
# else
#   # here a will be String
# end

# if @a.responds_to?(:abs)
#   # here @a is not guaranteed to respond to `abs`
# end

# a = @a
# if a.responds_to?(:abs)
#   # here a is guaranteed to respond to `abs`
# end

# # A bit shorter:
# if (a = @a).responds_to?(:abs)
#   # here a is guaranteed to respond to `abs`
# end

# a = some_condition ? nil : 3
# if a.nil?
#   # here a is Nil
# else
#   # here a is Int32
# end

# if !
# a = some_condition ? nil : 3
# if !a
#   # here a is Nil because a is falsey in this branch
# else
#   # here a is Int32, because a is truthy in this branch
# end
# b = some_condition ? 1 : "x"
# if !b.is_a?(Int32)
#   # here b is String because it's not an Int32
# end
