# 泛型
class MyBox(T)
  def initialize(@value : T)
  end

  def value
    @value
  end
end

int_box = MyBox(Int32).new(1)
puts int_box.value # => 1 (Int32)

string_box = MyBox(String).new("hello")
puts string_box.value # => "hello" (String)

# another_box = MyBox(String).new(1) # Error, Int32 doesn't match String
# More than one type argument is allowed:

# class MyDictionary(K, V)
# end
# Any name can be used for type arguments:

# class MyDictionary(KeyType, ValueType)
# end

MyBox.new(1)       # : MyBox(Int32)
MyBox.new("hello") # : MyBox(String)

# Generic structs and modules
module Moo(T)
  def t
    T
  end
end

class Foo(U)
  include Moo(U)

  def initialize(@value : U)
  end
end

foo = Foo.new(1)
puts foo.t

# Generic types inheritance
class Parent(T)
end

class Int32Child < Parent(Int32)
end

class GenericChild(T) < Parent(T)
end
