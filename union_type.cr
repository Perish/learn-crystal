# 变量或者表达式是可以有多个类型的
if 1 + 2 == 3
  a = 1
else
  a = "hello"
end

a # : Int32 | String

# The compile-time type
puts typeof(a) # => Int32 | String

puts a.class # Int32

# to_s is defined for Int32 and String, it returns String
# a.to_s # => String

# a + 1 # Error, because String#+(Int32) isn't defined

# set the compile-time type
a = 0.as(Int32 | Nil | String)
puts typeof(a) # => Int32 | Nil | String

# Union of classes and structs under the same hierarchy


class Foo
end

class Bar < Foo
end

class Baz < Foo
end

bar = Bar.new
baz = Baz.new

# Here foo's type will be Bar | Baz,
# but because both Bar and Baz inherit from Foo,
# the resulting type is Foo+

foo = rand < 0.5 ? bar : baz
puts typeof(foo) # => Foo+

# Union of tuples of the same size

t1 = {1, "hi"}   # Tuple(Int32, String)
t2 = {true, nil} # Tuple(Bool, Nil)
t3 = rand < 0.5 ? t1 : t2
typeof(t3) # Tuple(Int32 | Bool, String | Nil)

# Union of named tuples with the same keys
t1 = {x: 1, y: "hi"}   # Tuple(x: Int32, y: String)
t2 = {y: true, x: nil} # Tuple(y: Bool, x: Nil)

t3 = rand < 0.5 ? t1 : t2
typeof(t3) # NamedTuple(x: Int32 | Nil, y: String | Bool)
