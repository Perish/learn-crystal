# 定义一个类Person
# class Person
# end

# 生成一个类Person的实例用new
# person = Person.new

# 初始化方法initialize

class Person
  def initialize(name : String)
    @name = name
    @age = 0
  end

  def name
    @name
  end

  def age
    @age
  end
end

john = Person.new "john"
peter = Person.new "Peter"
puts john.name # => "John"
puts john.age  # => 0

puts peter.name # => "Peter"

# Note that we create a Person with new but we defined the initialization in an initialize method,
# not in a new method. Why is this so?

# The answer is that when we defined an initialize method Crystal defined a new method for us,
# like this:

# class Person
#   def self.new(name : String)
#     instance = Person.allocate
#     instance.initialize(name)
#     instance
#   end
# end
