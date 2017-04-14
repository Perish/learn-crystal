# 整数有符号(Int8 Int16 Int32 Int64)和无符号(UInt8 UInt16 UInt32 UInt64)
# 8 16 32 64 位

puts 1 # Int32
puts 1_i8 # Int8
puts 1_i16 # Int16
puts 1_i32 # Int32
puts 1_i64  # Int64

puts 1_u8   # UInt8
puts 1_u16  # UInt16
puts 1_u32  # UInt32
puts 1_u64  # UInt64

puts +10    # Int32
puts -20    # Int32

puts 2147483648          # Int64
puts 9223372036854775808 # UInt64

puts 1_000_000 # better than 1000000

# 0b 二进制
puts 0b1101 # == 13 

# 0o 八进制
puts 0o123 # == 83

# 0x 十六进制
puts 0xFE012D # == 16646445
puts 0xfe012d # == 16646445