# 限制表达式的类型
# if some_condition
#   a = 1
# else
#   a = "hello"
# end

# # a : Int32 | String

# a_as_int = a.as(Int32)
# a_as_int.abs	# works, compiler knows that a_as_int is Int32
#  # if a wasn't an Int32, an exception is raised

# 1.as(String) # can't cast Int32 to String

# The as pseudo-method can be used to cast an expression to a "bigger" type
a = 1
b = a.as(Int32 | Float64)
puts typeof(b)

# ary = [1, 2, 3]

# # We want to create an array 1, 2, 3 of Int32 | Float64
# ary2 = ary.map { |x| x.as(Int32 | Float64) }

# ary2 #:: Array(Int32 | Float64)
# ary2 << 1.5 # OK

# ary = [1, 2, 3]
# ary2 = ary.as(Array(Int32 | Float64))  # error: can't cast Array(Int32) to Array(Float64 | Int32)
# ary2 << 1.5

# as?
# The as? pseudo-method is similar to as, 
# except that it returns nil instead of raising an exception when the type doesn't match. 
value = rand < 0.5 ? -3 : nil
puts result = value.as?(Int32) || 10

puts value.as?(Int32).try &.abs