#  类型推断

# 最简单但可能最繁琐的方法是使用显示类型声明
class Person
  @name : String
  @age : Int32

  def initialize(@name)
    @age = 0
  end
end

# 不用显示类型声明
# 如果省略了一个显式类型的注释，编译器将尝试使用一堆句法规则来推断实例和类变量的类型。

# class Person
#   def initialize
#     @name = "John Doe"  # 是一个String类型
#     @age = 0 # 是一个Int32类型
#   end
# end

# class SomeObject
#   def lucky_number
#     @lucky_number = 42 # Int32 | Nil
#   end
# end

# class Person
#   def initialize
#     @address = Address.new("somewhere") # Address
#   end
# end

# class Something
#   def initialize
#     @values = Array(Int32).new  # Array(Int32)
#   end
# end

# class Person
#   def initialize(name : String)
#     @name = name  # 指明类型 String
#   end
# end

# 初始化方法同上
# class Person
#   def initialize(@name : String)
#   end
# end

# 给方法参数一个初始值
# class Person
#   def initialize(name = "John Doe")
#     @name = name
#   end
# end
# 也可以这样写:
# class Person
#   def initialize(@name = "John Doe")
#   end
# end

# lib 函数
# class Person
#   def initialize
#     @age = LibPerson.compute_default_age # Int32
#   end
# end

# lib LibPerson
#   fun compute_default_age : Int32
# end

# 7. Using an out lib expression
# class Person
#   def initialize
#     LibPerson.compute_default_age(out @age)
#   end
# end

# lib LibPerson
#   fun compute_default_age(age_ptr : Int32*)
# end

# class SomeObject
#   DEFAULT_LUCKY_NUMBER = 42

#   def initialize(@lucky_number = DEFAULT_LUCKY_NUMBER)
#   end
# end
