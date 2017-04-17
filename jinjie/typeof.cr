# The typeof expression returns the type of an expression:
a = 1
b = typeof(a) #=> Int32
puts b

puts typeof(1, "a", 'a') # =>  (Int32 | String | Char)

hash = {} of Int32 => String
another_hash = typeof(hash).new #:: Hash(Int32, String)

class Array
	def self.elem_type(typ)
		if typ.is_a?(Array)
			elem_type(typ.first)
		else
			typ
		end
	end
end

nest = [1, ["b", [:c, ['d']]]]
puts "nest first"
puts nest.first

flat = Array(typeof(Array.elem_type(nest))).new

puts typeof(nest) #=> Array(Int32 | Array(String | Array(Symbol | Array(Char))))
puts typeof(flat) #=> Array(String | Int32 | Symbol | Char)

