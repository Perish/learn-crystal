# 枚举是一组整数值，其中每个值都有一个关联的名称
enum Color
  Red        # 0
  Green      # 1
  Blue   = 5 # 5
  Yellow     # 6

  def red?
    self == Color::Red
  end
end
puts Color::Red          # Red
puts Color::Red.value    # 0
puts Color::Yellow       # Yellow
puts Color::Yellow.value # 6

# The type of the value is Int32 by default but can be changed:

# enum Color : UInt8
#   Red
#   Green
#   Blue
# end

# Color::Red.value #:: UInt8

# Flags enums
# The @[Flags] attribute makes the first constant's value be 1,
# and successive constants are multiplied by 2.
@[Flags]
enum IOMode
  Read  # 1
  Write # 2
  Async # 4
end

puts IOMode::Read.value  # 1
puts IOMode::Write.value # 2
puts IOMode::Async.value # 4

# Implicit constants, None and All, are automatically added to these enums,
# where None has the value 0 and All has the "or"ed value of all constants.

puts IOMode::None.value # => 0
puts IOMode::All.value  # => 7

puts(Color::Red)                    # prints "Red"
puts(IOMode::Write | IOMode::Async) # prints "Write, Async"

# Enums from integers
puts Color.new(1)  # => prints "Green"
puts Color.new(10) # => prints "10"

puts Color::Red.red?  # => true
puts Color::Blue.red? # => false

# ### Usage

# def paint(color : Color)
#   case color
#   when Color::Red
#     # ...
#   else
#     # Unusual, but still can happen
#     raise "unknown color: #{color}"
#   end
# end
# paint Color::Red

# The above could also be implemented with a Symbol:


def paint(color : Symbol)
  case color
  when :red
    # ...
    puts "hahah"
  else
    raise "unknown color: #{color}"
  end
end

paint :red
