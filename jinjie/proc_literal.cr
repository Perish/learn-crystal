def some_proc(&block : Int32 -> Int32)
  block
end

x = 0
proc = ->(i : Int32) { x += 1 }
proc = some_proc(&proc)
proc.call(1)
proc.call(10)

x # 11

def add(x, y)
  x + y
end

adder = ->add(Int32, Int32)
adder.call(1, 2) # => 3
