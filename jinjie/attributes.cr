# Link

# Tells the compiler how to link a C library. This is explained in the lib section.

# Extern
# Marking a Crystal struct with this attribute makes it possible to use it in lib declarations:

@[Extern]
struct MyStruct
end

lib MyLib
	fun my_func(s : MyStruct)# OK (gives an error without the Extern attribute)
end

# You can also make a struct behave like a C union (this can be pretty unsafe):

# A struct to easily convert between Int32 codepoints and Chars
@[Extern(union: true)]
struct Int32OrChar
  property int = 0
  property char = '\0'
end

s = Int32OrChar.new
s.char = 'A'
s.int # => 65

s.int = 66
s.char # => 'B'

# ThreadLocal
# The @[ThreadLocal] attribute can be applied to class variables and C external variables. It makes them be thread local.
class DontUseThis
  # One for each thread
  @[ThreadLocal]
  @@values = [] of Int32
end

# AlwaysInline
# Gives a hint to the compiler to always inline a method:
@[AlwaysInline]
def foo
  1
end

# NoInline
# Tells the compiler to never inline a method call. 
# This has no effect if the method yields, since functions which yield are always inlined
@[NoInline]
def foo
  1
end