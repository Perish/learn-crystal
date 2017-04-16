# 方法定义的组成部分
def foo(
        # These are positional arguments:
        x, y, z = 1,
        # This is the splat argument:
        *args,
        # These are the named arguments:
        a, b, c = 2,
        # This is the double splat argument:
        **options)
end

foo(
  # These are positional arguments
  1, 2,
  # These are named arguments
  a: 1, b: 2
)

# Only one positional argument allowed, y must be passed as a named argument
def foo(x, *, y)
end

foo 1        # Error, missing argument: y
foo 1, 2     # Error: wrong number of arguments (given 2, expected 1)
foo 1, y: 10 # OK

# One or more positional argument allowed, y must be passed as a named argument


def foo(x, *args, y)
end

foo 1             # Error, missing argument: y
foo 1, 2          # Error: missing argument; y
foo 1, 2, 3       # Error: missing argument: y
foo 1, y: 10      # OK
foo 1, 2, 3, y: 4 # OK

# A method with two required named arguments: x and y


def foo(*, x, y)
end

foo            # Error: missing arguments: x, y
foo x: 1       # Error: missing argument: y
foo x: 1, y: 2 # OK

# A method with two required named arguments: x and y


def foo(*, x, y = 2)
end

foo            # Error: missing argument: x
foo x: 1       # OK, y is 2
foo x: 1, y: 3 # OK, y is 3


def foo(*, x)
  puts "Passed with x: #{x}"
end

def foo(*, y)
  puts "Passed with y: #{y}"
end

foo x: 1 # => Passed with x: 1
foo y: 2 # => Passed with y: 2


def foo(x, *, y)
end

foo 1, y: 2    # OK
foo y: 2, x: 3 # OK


def plan(begin begin_time, end end_time)
  puts "Planning between #{begin_time} and #{end_time}"
end

plan begin: Time.now, end: 2.days.from_now

def increment(value, by)
  # OK, but reads odd
  value + by
end

def increment(value, by amount)
  # Better
  value + amount
end
