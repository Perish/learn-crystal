# class Person
#   getter :age

#   def initialize(@name : String)
#     @age = 0
#   end

#   def become_older
#     @age += 1
#   end

#   def become_older(years)
#     @age += years
#   end
# end

# john = Person.new "John"
# puts john.age # => 0

# john.become_older
# puts john.age # => 1

# john.become_older 5
# puts john.age # => 6

class Person
  getter :age

  def initialize(@name : String)
    @age = 0
  end

  # Increases age by one
  def become_older
    @age += 1
  end

  # Increases age by the given number of years
  def become_older(years : Int32)
    @age += years
  end

  # Increases age by the given number of years, as a String
  def become_older(years : String)
    @age += years.to_i
  end

  # Yields the current age of this person and increases
  # its age by the value returned by the block
  def become_older
    @age += yield @age
  end
end

person = Person.new "John"

person.become_older
person.age # => 1

person.become_older 5
person.age # => 6

person.become_older "12"
person.age # => 18

person.become_older do |current_age|
  current_age < 20 ? 10 : 30
end
person.age # => 28

# class Person
# getter :age
# def initialize(@name : String)
#   @age = 0
# end
#   def become_older(&block)
#     @age += yield @age
#   end
# end

# class Person
#   getter :age

#   def initialize(@name : String)
#     @age = 0
#   end

#   # First, this method is defined
#   def become_older(age)
#     @age += age
#   end

#   # Since "String" is more restrictive than no restriction
#   # at all, the compiler puts this method before the previous
#   # one when considering which overload matches.
#   def become_older(age : String)
#     @age += age.to_i
#   end
# end

# person = Person.new "John"

# # Invokes the first definition
# person.become_older 20

# # Invokes the second definition
# person.become_older "12"
