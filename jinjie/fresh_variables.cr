macro update_x
  x = 1
end

x = 0
update_x
x #=> 1

macro dont_update_x
  %x = 1
  puts %x
end

x = 0
dont_update_x # outputs 1
x #=> 
# Using %x in the above example, 
# we declare a variable whose name is guaranteed not to conflict with local variables in the current scope.



macro fresh_vars_sample(*names)
  # First declare vars
  {% for name, index in names %}
    print "Declaring: ", "%name{index}", '\n'
    %name{index} = {{index}}
  {% end %}

  # Then print them
  {% for name, index in names %}
    print "%name{index}: ", %name{index}, '\n'
  {% end %}
end

fresh_vars_sample a, b, c

# Sample output:
# Declaring: __temp_255
# Declaring: __temp_256
# Declaring: __temp_257
# __temp_255: 0
# __temp_256: 1
# __temp_257: 2