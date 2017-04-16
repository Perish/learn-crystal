class Foo
  def one
    1
  end

  def yield_with_self
    with self yield
  end

  def yield_normally
    yield
  end
end

def one
  "one"
end

puts Foo.new.yield_with_self { one } # => 1
puts Foo.new.yield_normally { one }  # => "one"

array = [{1, "one"}, {2, "two"}]
array.each do |(number, word)|
  puts "#{number}: #{word}"
end

# The above is simply syntax sugar of this:

# array = [{1, "one"}, {2, "two"}]
# array.each do |arg|
#   number = arg[0]
#   word = arg[1]
#   puts "#{number}: #{word}"
# end
