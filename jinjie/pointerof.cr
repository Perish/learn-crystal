# The pointerof expression returns a Pointer that points to the contents of a variable or instance variable.
a = 1
ptr = pointerof(a)
puts ptr.value
ptr.value = 2
puts a # => 2

# class Point
# 	def initialize(@x, @y)
		
# 	end

# 	def x
# 		@x
# 	end

# 	def x_ptr
# 		pointerof(@x)
# 	end
# end

# point = Point.new 1, 2
# ptr = point.x_ptr

# ptr.value = 10

# puts point.x # => 10