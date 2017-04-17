# whether an expression's runtime type inherits or includes another type.
a = 1
a.is_a?(Int32)          #=> true
a.is_a?(String)         #=> false
a.is_a?(Number)         #=> true
a.is_a?(Int32 | String) #=> true


# nil

a = 1
a.nil?          # => false

b = nil
b.nil?          # => true

# respond_to?
# whether a type has a method with the given name
a = 1
a.responds_to?(:abs)    #=> true
a.responds_to?(:size) #=> false