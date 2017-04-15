a = 1
if a > 0
  a = 10
end
a # => 10

b = 1
if b > 2
  b = 10
else
  b = 20
end
b # => 20

# 语法
# if some_condition
#   do_something
# elsif some_other_condition
#   do_something_else
# else
#   do_that
# end

a = if true
      "hello"
    else
      true
    end
# a : String | Bool
puts typeof(a)
puts "a #{a}"

# b = 1
# if some_condition
#   b = "hello"
# end
# # b : Int32 | String

# if some_condition
#   c = 1
# else
#   c = "hello"
# end
# # c : Int32 | String

# if some_condition
#   d = 1
# end
# # d : Int32 | Nil

# a = 1
# if some_condition
#   a = "hello"
#   # a : String
#   a.size
# end
# # a : String | Int32

# if some_condition
#   e = 1
# else
#   e = "hello"
#   # e : String
#   return
# end
# # e : Int32

# a = 2 if some_condition

# # The above is the same as:
# if some_condition
#   a = 2
# end

a = if 2 > 1
      3
    else
      4
    end
a # => 3

if 1 > 2
  3
end

# The above is the same as:
if 1 > 2
  3
else
  nil
end

# Another example:
if 1 > 2
else
  3
end

# The above is the same as:
if 1 > 2
  nil
else
  3
end

# Ternary if
a = 1 > 2 ? 3 : 4

# The above is the same as:
a = if 1 > 2
      3
    else
      4
    end

# # if var
# a = some_condition ? nil : 3
# # a is Int32 or Nil

# if a
#   # Since the only way to get here is if a is truthy,
#   # a can't be nil. So here a is Int32.
#   a.abs
# end

# if a = some_expression
#   # here a is not nil
# end

# if a && b
#   # here both a and b are guaranteed not to be Nil
# end

# The above logic doesn’t work with instance variables or class variables:

# if @a
#   # here @a can be nil
# end
# This is because any method call could potentially affect that instance variable,
# rendering it nil.
# Another reason is that another thread could change that instance variable after checking the condition.

# To do something with @a only when it is not nil you have two options:

# # First option: assign it to a variable
# if a = @a
#   # here a can't be nil
# end

# # Second option: use `Object#try` found in the standard library
# @a.try do |a|
#   # here a can't be nil
# end

# if method # first call to a method that can return Int32 or Nil
#           # here we know that the first call did not return Nil
#   method  # second call can still return Int32 or Nil
# end
