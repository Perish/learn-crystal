macro define_method(name, content)
	def {{name}}
		{{content}}
	end
end

# This generates:
#
#     def foo
#       1
#     end

define_method foo, 1

puts foo # => 1

# Scope
# Macros declared at the top-level are visible anywhere. 
# If a top-level macro is marked as private it is only accessible in that file.

class Foo
	macro emphasize(value)
		puts "***#{ {{value}} }***"
	end

	def yield_with_self
		with self yield
	end
end

Foo.new.yield_with_self { emphasize(10) } #=> "***10***"

# Macros defined in classes and modules can be invoked from outside of them too
Foo.emphasize("aaa")

# 插值
# You use {{...}} to paste, or interpolate, an AST node, as in the above example.
# This generates:
#
#     def :foo
#       1
#     end
define_method :foo, 1

# Macro calls
macro define_method(name, content)
  def {{name.id}}
    {{content}}
  end
end

# This correctly generates:
#
#     def foo
#       1
#     end
define_method :foo, 1

# 条件
# You use {% if condition %} ... {% end %} to conditionally generate code:
macro define_method(name, content)
  def {{name}}
    {% if content == 1 %}
      "one"
    {% else %}
      {{content}}
    {% end %}
  end
end

define_method foo, 1
define_method bar, 2

foo #=> one
bar #=> 2

{% if env("TEST") %}
  puts "We are in test mode"
{% end %}

# 迭代
macro define_dummy_methods(names)
	{% for name, index in names %}
		def {{name.id}}
			{{index}}
		end
	{% end %}
end

define_dummy_methods [foo, bar, baz]

puts foo #=> 0
puts bar #=> 1
puts baz #=> 2

# hash
macro define_dummy_methods(hash)
  {% for key, value in hash %}
    def {{key.id}}
      {{value}}
    end
  {% end %}
end
define_dummy_methods({foo: 10, bar: 20})
foo #=> 10
bar #=> 20


# Macro iterations can be used outside a macro definition
{% for name, index in ["foo", "bar", "baz"] %}
  def {{name.id}}
    {{index}}
  end
{% end %}

foo #=> 0
bar #=> 1
baz #=> 2


# Variadic arguments and splatting
macro define_dummy_methods(*names)
  {% for name, index in names %}
    def {{name.id}}
      {{index}}
    end
  {% end %}
end

define_dummy_methods foo, bar, baz

foo #=> 0
bar #=> 1
baz #=> 2

macro println(*values)
   print {{*values}}, '\n'
end

println 1, 2, 3 # outputs 123\n

# constants
VALUES = [1, 2, 3]

{% for value in VALUES %}
  puts {{value}}
{% end %}