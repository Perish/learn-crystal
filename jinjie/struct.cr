# A struct declaration inside a lib declares a C struct.

lib C
  # In C:
  #
  #  struct TimeZone {
  #    int minutes_west;
  #    int dst_time;
  #  };

  struct TimeZone
  	minutes_west : Int32
  	dst_time : Int32
	end
end

lib C
  struct TimeZone
    minutes_west, dst_time : Int32
  end
end

lib C
  struct LinkedListNode
    prev, _next : LinkedListNode*
  end

  struct LinkedList
    head : LinkedListNode*
  end
end

tz = C::TimeZone.new

tz = C::TimeZone.new minutes_west: 1, dst_time: 2
tz.minutes_west #=> 1
tz.dst_time     #=> 2

# A C struct is passed by value (as a copy) to functions and methods, and also passed by value when it is returned from a method:

def change_it(tz)
  tz.minutes_west = 1
end

tz = C::TimeZone.new
change_it tz
tz.minutes_west #=> 0