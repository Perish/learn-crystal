# Raising exception
# raise is a regular method with two overloads: 
# one accepting a String and another accepting an Exception instance:

# raise "OH ! NO"
# raise Exception.new("Some error")

# The String version just creates a new Exception instance with that message.
# Only Exception instances or subclasses can be raised.


# Defining custom exceptions
class MyException < Exception
end
class MyOtherException < Exception
end

# Rescuing exceptions
# To rescue any exception use a begin ... rescue ... end expression:
begin
	raise "OH ! NO"
rescue 
	puts "Rescuing"
end

begin
  raise "OH NO!"
rescue ex
  puts ex.message
end

begin
  raise MyException.new("OH NO!")
rescue MyException
  puts "Rescued MyException"
end

begin
	raise MyException.new("OH NO!")
rescue ex : MyException
	puts "Rescued MyException: #{ex.message}"
end
# Output: Rescued MyException: OH NO!

begin
  # ...
rescue ex1 : MyException
  # only MyException...
rescue ex2 : MyOtherException
  # only MyOtherException...
rescue
  # any other kind of exception
end

begin
  # ...
rescue ex : MyException | MyOtherException
  # only MyException or MyOtherException
rescue
  # any other kind of exception
end


#### ensure
# An ensure clause is executed at the end of a 
# begin ... end or begin ... rescue ... end expression regardless of whether an exception was raised or not

begin
  something_dangerous
ensure
  puts "Cleanup..."
end

# Will print "Cleanup..." after invoking something_dangerous,
# regardless of whether it raised or not


begin
  something_dangerous
rescue
  # ...
ensure
  # this will always be executed
end


### else

# An else clause is executed only if no exceptions were rescued:
begin
  something_dangerous
rescue
  # execute this if an exception is raised
else
  # execute this if an exception isn't raised
end

# Short syntax form
# Exception handling has a short syntax form: 
# assume a method definition is an implicit begin ... end expression, 
# then specify rescue, ensure and else clauses
def some_method
  something_dangerous
rescue
  # execute if an exception is raised
end

# The above is the same as:
def some_method
  begin
    something_dangerous
  rescue
    # execute if an exception is raised
  end
end

def some_method
  something_dangerous
ensure
  # always execute this
end

# The above is the same as:
def some_method
  begin
    something_dangerous
  ensure
    # always execute this
  end
end


# Type inference
begin
  a = something_dangerous_that_returns_Int32
ensure
  puts a + 1 # error, undefined method '+' for Nil
end

begin
  a = 1
  something_dangerous
ensure
  puts a + 1 # error, undefined method '+' for Nil
end

# Clearer than the above: `a` doesn't need
# to be in the exception handling code.
a = 1
begin
  something_dangerous
ensure
  puts a + 1 # works
end


array = [1, 2, 3]
array[4]  # raises because of IndexError
array[4]? # returns nil because of index out of bounds
