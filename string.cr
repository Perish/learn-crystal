# 字符串都是用双引号括起来
puts "hello world"

puts "\"" # double quote
puts "\\" # backslash
puts "\e" # escape
puts "\f" # form feed
puts "\n" # newline
puts "\r" # carriage return
puts "\t" # tab
puts "\v" # vertical tab

# 你可以使用一个反斜杠后跟最多三位数表示代码点用八进制
puts "\100" # == @
puts "\101" # == "A"
puts "\123" # == "S"
puts "\12"  # == "\n"
puts "\1"   # string with one character with code point 1

# 你可以使用一个反斜杠后跟一个U和四进制字符来表示一个Unicode代码点
puts "\u0041" # == "A"

# 或者你可以使用大括号指定六进制数（0 10ffff）
puts "\u{41}" # == "A"
puts "\u{1F52E}" # == "🔮"

# 一个字符串可以跨越多行
puts "hello
      world" # same as "hello\n      world"

# 多行文本，一行显示 在每行末尾加 \
puts "hello " \
"world, " \
"no newlines" # same as "hello world, no newlines"

puts "hello \
			world,  \
			no newlines" # same as "hello world, no newlines"

# 如果需要编写一个具有多个双引号、括号或类似字符的字符串，可以如下：
puts %(hello ("world")) # same as "hello (\"world\")"
puts %[hello ["world"]] # same as "hello [\"world\"]"
puts %{hello {"world"}} # same as "hello {\"world\"}"
puts %<hello <"world">> # same as "hello <\"world\">"
puts %(hello #{1 + 5})

# 你也可以用 "heredoc" 创建文本:
puts <<-SOME
			hello
			SOME.upcase # => "HELLO"

def upc(string)
	string.upcase
end

puts upc(<<-SOME
					hello world
					SOME) # => "HELLO WORLD"

# Same as "Hello\n  world"
puts <<-STRING
  Hello
    world1
  STRING

# Same as "  Hello\n    world"
puts <<-STRING
    Hello
      world2
  STRING

# 在字符串中嵌入表达式 #{}
a = 1
b = 2
puts "#{a} + #{b} = #{a + b}"

# To create a String without interpolation nor escapes use %q:
puts %q(hello \n #{world}) # => "hello \\n \#{world}"

# Heredoc without interpolation nor escapes is also possible, simply enclose the heredoc delimiter in single quotes:
puts <<-'HERE'
			hello \n #{world}
			HERE
