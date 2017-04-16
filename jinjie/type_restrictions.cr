# def add(x : Number, y : Number)
#   x + y
# end

# # Ok
# add 1, 2 # Ok

# # Error: no overload matches 'add' with types Bool, Bool
# add true, false

# # A class that has a + method but isn't a Number
# class Six
#   def +(other)
#     6 + other
#   end
# end

# # add method without type restrictions
# def add(x, y)
#   x + y
# end

# # OK
# add Six.new, 10

# # add method with type restrictions
# def restricted_add(x : Number, y : Number)
#   x + y
# end

# # Error: no overload matches 'restricted_add' with types Six, Int32
# restricted_add Six.new, 10

# class Person
#   def ==(other : self)
#     other.name == name
#   end

#   def ==(other)
#     false
#   end
# end

# john = Person.new "John"
# another_john = Person.new "John"
# peter = Person.new "Peter"

# john == another_john # => true
# john == peter        # => false (names differ)
# john == 1            # => false (because 1 is not a Person)

# class Person
#   def self.compare(p1 : self, p2 : self)
#     p1.name == p2.name
#   end
# end

# john = Person.new "John"
# peter = Person.new "Peter"

# Person.compare(john, peter) # OK

# # Using, for example, Int32 as a type restriction makes the method only accept instances of Int32:
# def foo(x : Int32)
# end

# foo 1
# foo "hello" # Error

# # If you want a method to only accept the type Int32 (not instances of it), you use .class
# def foo(x : Int32.class)
# end

# foo Int32  # OK
# foo String # Error

# def foo(x : Int32.class)
#   puts "Got Int32"
# end

# def foo(x : String.class)
#   puts "Got String"
# end

# foo Int32  # prints "Got Int32"
# foo String # prints "Got String"

# def foo(*args : Int32)
# end

# def foo(*args : String)
# end

# foo 1, 2, 3       # OK, invokes first overload
# foo "a", "b", "c" # OK, invokes second overload
# foo 1, 2, "hello" # Error
# foo()             # Error

# def foo
#   # This is the empty-tuple case
# end

# def foo(*args : Object)
# end

# foo() # Error
# foo(1) # OK
# foo(1, "x") # OK

# You can make a type restriction take the type of an argument,
# or part of the type of an argument, using forall:
def foo(x : T) forall T
  T
end

puts foo(1)       # => Int32
puts foo("hello") # => String


def foo(x : Array(T)) forall T
  T
end

foo([1, 2])   # => Int32
foo([1, "a"]) # => (Int32 | String)

def foo(x : T.class) forall T
  Array(T)
end

foo(Int32)  # => Array(Int32)
foo(String) # => Array(String)

def push(element : T, array : Array(T)) forall T
  array << element
end

push(4, [1, 2, 3])      # OK
push("oops", [1, 2, 3]) # Error
