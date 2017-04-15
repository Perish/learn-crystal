# while some_condition
#   do_this
# end

# a = 1
# while some_condition
#   # a : Int32 | String
#   a = "hello"
#   # a : String
#   a.size
# end
# # a : Int32 | String

# while true
#   do_something
#   break if some_condition
# end

# loop do
#   do_something
#   break if some_condition
# end

# break
a = 2
while (a += 1) < 20
  if a == 10
    # goes to 'puts a'
    break
  end
end
puts a # => 10

# next
a = 1
while a < 5
  a += 1
  if a == 3
    next
  end
  puts a
end
# The above prints the numbers 2, 4 and 5
