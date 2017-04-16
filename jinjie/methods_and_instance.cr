class Person
  def initialize(@name : String)
    @age = 0
  end

  def age
    @age
  end

  def name
    @name
  end
end

class Person
  def become_older
    @age += 1
  end
end

john = Person.new "John"
peter = Person.new "Peter"

john.age # => 0
puts john.name

john.become_older
puts john.age # => 1

peter.age # => 0

# Redefining methods

class Person
  def become_older
    @age += 2
  end
end

person = Person.new "John"
person.become_older
puts person.age # => 2

# previous_def 您可以使用previous_def调用先前重新定义的方法


class Person
  def become_older
    previous_def
    @age += 2
  end
end

person1 = Person.new "John"
person1.become_older
puts person1.age # => 4

# 实例变量也可以在initialize方法外初始化
# class Person
#   @age = 0

#   def initialize(@name : String)
#   end
# end
# This will initialize @age to zero in every constructor
