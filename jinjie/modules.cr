# 两个目的
# 1、命名空间 2、be mixed

module Curses
  class Window
  end
end

Curses::Window.new

# module ItemsSize
#   def size
#     items.size
#   end
# end

# class Items
#   include ItemsSize

#   def items
#     [1, 2, 3]
#   end
# end

# items = Items.new
# items.size # => 3

module SomeSize
  def size
    3
  end
end

class Items
  extend SomeSize
end

Items.size # => 3

module SomeModule
  class SomeType
  end

  def some_method
    1
  end
end

include SomeModule

SomeType.new # OK, same as SomeModule::SomeType
some_method  # OK, 1

module Base64
  extend self

  def encode64(string)
    # ...
  end

  def decode64(string)
    # ...
  end
end

Base64.encode64 "hello" # => "aGVsbG8="
# But also it can be included in the program and its methods can be invoked without a namespace:

include Base64

encode64 "hello" # => "aGVsbG8="
