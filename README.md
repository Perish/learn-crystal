###  The only falsey values are nil, false and null pointers (pointers whose memory address is zero). Any other value is truthy.
### 除了nil、false和空指针为假，其他值都是真



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