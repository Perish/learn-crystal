class Person
  getter :age

  def initialize(@name : String)
    @age = 0
  end

  def become_older(by = 1)
    @age += by
  end
end

john = Person.new "John"
puts john.age # => 0

john.become_older
puts john.age # => 1

john.become_older 2
puts john.age # => 3

john.become_older by: 5
puts john.age # => 8

# def some_method(x, y = 1, z = 2, w = 3)
#   # do something...
# end

# some_method 10                   # x: 10, y: 1, z: 2, w: 3
# some_method 10, z: 10            # x: 10, y: 1, z: 10, w: 3
# some_method 10, w: 1, y: 2, z: 3 # x: 10, y: 2, z: 3, w: 1
# some_method y: 10, x: 20         # x: 20, y: 10, z: 2, w: 3

# some_method y: 10                # Error, missing argument: x
