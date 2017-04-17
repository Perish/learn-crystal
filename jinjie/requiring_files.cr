# To make the compiler process other files you use require "...". 
# 编译器处理其他文件，用require "..."，引用
# It accepts a single argument, a string literal, and it can come in many flavors.
# Once a file is required, the compiler remembers its absolute path and later requires of that same file will be ignored.

# Other forms

# In both cases you can use nested names and they will be looked up in nested directories:

# require "foo/bar/baz" will lookup "foo/bar/baz.cr" or "foo/bar/baz/baz.cr" in the require path.
# require "./foo/bar/baz" will lookup "foo/bar/baz.cr" or "foo/bar/baz/baz.cr" relative to the current file.
# You can also use "../" to access parent directories relative to the current file, so require "../../foo/bar" works as well.

# In all of these cases you can use the special * and ** suffixes:

# require "foo/*" will require all ".cr" files below the "foo" directory, but not below directories inside "foo".
# require "foo/**" will require all ".cr" files below the "foo" directory, and below directories inside "foo", recursively.