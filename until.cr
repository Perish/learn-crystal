# until some_condition
#   do_this
# end

# # The above is the same as:
# while !some_condition
#   do_this
# end

a = 1
until a > 10
  puts a += 1
end

# some_exp1 && some_exp2

# # The above is the same as:
# tmp = some_exp1
# if tmp
#   some_exp2
# else
#   tmp
# end

# some_exp1 || some_exp2

# # The above is the same as:
# tmp = some_exp1
# if tmp
#   tmp
# else
#   some_exp2
# end
