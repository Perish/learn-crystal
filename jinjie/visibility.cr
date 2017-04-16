# private

class Person
  private def say(message)
    puts message
  end

  def say_hello
    say "hello"      # OK, no receiver
    self.say "hello" # Error, self is a receiver

    other = Person.new "Other"
    other.say "hello" # Error, other is a receiver
  end
end

class Employee < Person
  def say_bye
    say "bye" # OK  子类可以调用父类的私有方法
  end
end

class Foo
  private class Bar
  end

  Bar      # OK
  Foo::Bar # Error
end

Foo::Bar # Error

# private can be used with class, module, lib, enum, alias and constants:

class Foo
  private ONE = 1

  ONE # => 1
end

Foo::ONE # Error

# protected

# A protected method can only be invoked on:

# instances of the same type as the current type
# instances in the same namespace (class, struct, module, etc.) as the current type

# ## Example of 1

class Person
  protected def say(message)
    puts message
  end

  def say_hello
    say "hello"      # OK, implicit self is a Person
    self.say "hello" # OK, self is a Person

    other = Person.new "Other"
    other.say "hello" # OK, other is a Person
  end
end

class Animal
  def make_a_person_talk
    person = Person.new
    person.say "hello" # Error, person is a Person
    # but current type is an Animal
  end
end

one_more = Person.new "One more"
one_more.say "hello" # Error, one_more is a Person
# but current type is the Program

# ## Example of 2


module Namespace
  class Foo
    protected def foo
      puts "Hello"
    end
  end

  class Bar
    def bar
      # Works, because Foo and Bar are under Namespace
      Foo.new.foo
    end
  end
end

Namespace::Bar.new.bar

class Person
  protected def self.say(message)
    puts message
  end

  def say_hello
    Person.say "hello" # OK
  end
end

# Private top-level methods

# A private top-level method is only visible in the current file.
# In file one.cr
private def greet
  puts "Hello"
end

greet # => "Hello"

# In file two.cr
require "./one"

greet # undefined local variable or method 'greet'

# Private top-level types

# A private top-level type is only visible in the current file.

# In file one.cr
private class Greeter
  def self.greet
    "Hello"
  end
end

Greeter.greet # => "Hello"

# In file two.cr
require "./one"

Greeter.greet # undefined constant 'Greeter'
