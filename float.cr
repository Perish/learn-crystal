# 有两个float类型, Float32 和 Float64

puts 1.0      # Float64
puts 1.0_f32  # Float32
puts 1_f32    # Float32

puts 1e10     # Float64
puts 1.5e10   # Float64
puts 1.5e-7   # Float64

puts +1.3     # Float64
puts -0.5     # Float64

puts 1_000_000.111_111 # a lot more readable than 1000000.111111, yet functionally the same