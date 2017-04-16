def int_to_int(&block : Int32 -> Int32)
  block
end

proc = int_to_int { |x| x + 1 }
puts proc.call(1) # => 2


class Model
  def on_save(&block)
    @on_save_callback = block
  end

  def save
    if callback = @on_save_callback
      callback.call
    end
  end
end

model = Model.new

model.on_save { puts "Saved!" }
model.save

# def some_proc(&block : Int32 ->)
#   block
# end

# proc = some_proc { |x| x + 1 }
# puts proc.call(1) # void

def some_proc(&block : Int32 -> _)
  block
end

proc = some_proc { |x| x + 1 }
puts proc.call(1) # 2

proc = some_proc { |x| x.to_s }
puts proc.call(1) # "1"

# return and break can't be used inside a captured block.
# next can be used and will exit and give the value of the captured block.

# The default receiver within a captured block can't be changed by using with ... yield.
