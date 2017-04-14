# 不带参数的代码块
->{ 1 } # Proc(Int32)
->{puts "abc"}.call

# 一个参数的代码块
->(x: Int32) { x.to_s } # Proc(Int32, String)

# 两个参数的代码块
->(x: Int32, y: Int32) { x + y } # Proc(Int32, Int32, Int32)

# 定义Proc
pro = Proc(Int32, String).new { |x| x.to_s } # Proc(Int32, String)
puts pro.call(32)

# 代码块接受一个Int32类型参数，返回一个String字符串
Proc(Int32, String)

# 代码块不接受参数并返回 Void
Proc(Void)

# 代码块接受Int32和String类型两个参数,并返回Char
Proc(Int32, String, Char)

# An array of Proc(Int32, String, Char)
Array(Int32, String -> Char)

# 调用Proc，需要用call方法，参数个数要和代码块的类型匹配
proc = ->(x: Int32, y: Int32) { x + y }
puts proc.call(1, 2) # => 3

# 代码块可以从现有方法中创建
def one
	1
end

proc = ->one
puts proc.call

def plus_one(x)
  x + 1
end

proc = ->plus_one(Int32)
proc.call(41) #=> 42

str = "hello"
proc = ->str.count(Char)
puts proc.call('e') #=> 1
puts proc.call('l') #=> 2
