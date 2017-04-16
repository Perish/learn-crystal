# Defines a method in the program
# def add(x, y)
#   x + y
# end

# Invokes the add method in the program
# add(1, 2) # => 3

# explicit return expressions are possible, 没有的return默认最后一个表达式为返回值
def even?(num)
  if num % 2 == 0
    return true
  end

  return false
end

# 当调用一个方法没有指定接收者，像 add(1, 3), 会在 程序中查找，如果在当前文件或者祖先链找不到
def add(x, y)
  x + y
end

class Foo
  def bar
    # invokes the program's add method
    add(1, 2)

    # invokes Foo's baz method
    baz(1, 2)
  end

  def baz(x, y)
    x * y
  end
end

# 如果你先调用内部方法，但是在当前文件中也有定义，那么在方法前面加上::
def baz(x, y)
  x + y
end

class Foo
  def bar
    baz(4, 2)   # => 2
    ::baz(4, 2) # => 6
  end

  def baz(x, y)
    x - y
  end
end

# Variables declared in a program are not visible inside methods
x = 1

def add(y)
  x + y # error: undefined local variable or method 'x'
end

# add(2)

# 方法中的括号是可选的
# add 1, 2 # same as add(1, 2)
