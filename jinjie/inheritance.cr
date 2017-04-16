# class Person
#   def initialize(@name : String)
#   end

#   def greet
#     puts "Hi, I'm #{@name}"
#   end
# end

# class Employee < Person
# end

# employee = Employee.new "John"
# employee.greet # "Hi, I'm John"

# If a class defines a new or initialize then its superclass constructors are not inherited:

class Person
  def initialize(@name : String)
  end
end

class Employee < Person
  def initialize(@name : String, @company_name : String)
  end
end

Employee.new "John", "Acme" # OK
Employee.new "Peter"        # Error: wrong number of arguments
# for 'Employee:Class#new' (1 for 2)

# 重构


class Person
  def greet(msg)
    puts "Hi, #{msg}"
  end
end

class Employee < Person
  def greet(msg)
    puts "Hello, #{msg}"
  end
end

p = Person.new
p.greet "everyone" # "Hi, everyone"

e = Employee.new
e.greet "everyone" # "Hello, everyone"

# Instead of overriding you can define specialized methods by using type restrictions:


class Person
  def greet(msg)
    puts "Hi, #{msg}"
  end
end

class Employee < Person
  def greet(msg : Int32)
    puts "Hi, this is a number: #{msg}"
  end
end

e = Employee.new
e.greet "everyone" # "Hi, everyone"

e.greet 1 # "Hi, this is a number: 1"

# super

# You can invoke a superclass' method using super:


class Person
  def greet(msg)
    puts "Hello, #{msg}"
  end
end

class Employee < Person
  def greet(msg)
    super # Same as: super(msg)
    super("another message")
  end
end
# Without arguments or parentheses,
# super receives the same arguments as the method's arguments.
# Otherwise, it receives the arguments you pass to it.
