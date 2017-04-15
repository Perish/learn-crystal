# case exp
# when value1, value2
#   do_something
# when value3
#   do_something_else
# else
#   do_another_thing
# end
exp = 33
case exp
when 32, 33
  puts "32,33"
when 34
  puts "34"
else
  puts "nil"
end

# # The above is the same as:
# tmp = exp
# if value1 === tmp || value2 === tmp
#   do_something
# elsif value3 === tmp
#   do_something_else
# else
#   do_another_thing
# end

# Note that === is used for comparing an expression against a case's value.

# 如果 var 是类型
# case var
# when String
#   # var : String
#   do_something
# when Int32
#   # var : Int32
#   do_something_else
# else
#   # here var is neither a String nor an Int32
#   do_another_thing
# end
var = "dd"
case var
when String
  puts "String"
when Int32
  puts "Int32"
else
  puts "something"
end

# # The above is the same as:
# if var.is_a?(String)
#   do_something
# elsif var.is_a?(Int32)
#   do_something_else
# else
#   do_another_thing
# end

# case num
# when .even?
#   do_something
# when .odd?
#   do_something_else
# end

num = 5
case num
when .even?
  puts "even"
when .odd?
  puts "odd"
end

# # The above is the same as:
# tmp = num
# if tmp.even?
#   do_something
# elsif tmp.odd?
#   do_something_else
# end

# case
# when cond1, cond2
#   do_something
# when cond3
#   do_something_else
# end

a, b = nil, 32
case
when a.nil?, b.nil?
  puts "kongzhi"
when b == 32
  puts "32"
end

# # The above is the same as:
# if cond1 || cond2
#   do_something
# elsif cond3
#   do_something_else
# end

# Tuple size must match
# case {value1, value2}
# when {0, 0} # OK, 2 elements
#   # ...
# when {1, 2, 3} # Compiler error, because it will never match
#   # ...
# end

tuple1 = {1, "hello"}
case tuple1
when {1, "hello"}
  puts "oh one"
when {1, 2, 3}
  puts "ho 1 2 3"
end

# Underscore allowed
# case {value1, value2}
# when {0, _}
#   # Matches if 0 === value1, no test done against value2
# when {_, 0}
#   # Matches if 0 === value2, no test done against value1
# end

# Implicit-object allowed
# case {value1, value2}
# when {.even?, .odd?}
#   # Matches if value1.even? && value2.odd?
# end

# Comparing against a type will perform an is_a? check
# case {value1, value2}
# when {String, Int32}
#   # Matches if value1.is_a?(String) && value2.is_a?(Int32)
#   # The type of value1 is known to be a String by the compiler,
#   # and the type of value2 is known to be an Int32
# end
