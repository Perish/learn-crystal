PI = 3.14

module Earth
  RADIUS = 6_371_000
end

PI            # => 3.14
Earth::RADIUS # => 6_371_000

TEN = begin
  a = 0
  while a < 10
    a += 1
  end
  a
end

TEN # => 10
