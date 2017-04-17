{% if flag?(:x86_64) %}
  # some specific code for 64 bits platforms
  puts "x86_64"
{% else %}
  # some specific code for non-64 bits platforms
  puts "non-64"
{% end %}

{% if flag?(:linux) && flag?(:x86_64) %}
  # some specific code for linux 64 bits
  puts "linux && x86_64"
{% end %}

# These flags are generally used in C bindings to conditionally define types and functions. 
# For example the very well known size_t type is defined like this in Crystal:
lib C
  {% if flag?(:x86_64) %}
    alias SizeT = UInt64
  {% else %}
    alias SizeT = UInt32
  {% end %}
end