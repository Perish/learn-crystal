# 赋值 =

# 本地变量
local = 1
# 实例变量
# @instance = 2
# 类变量
# @@class = 3

# 语法糖
local += 1 # same as: local = local + 1
# +, -, *, /, %, |, &, ^, **, <<, >>

local ||= 1 # same as: local || (local = 1)
local &&= 1 # same as: local && (local = 1)

# person.name=("John")

# person.name = "John"

# An indexed assignment
objects.[]=(2, 3)

# The above can be written as:
objects[2] = 3

# Not assignment-related, but also syntax sugar:
objects.[](2, 3)

# The above can be written as:
objects[2, 3]

person.age += 1 # same as: person.age = person.age + 1

person.name ||= "John" # same as: person.name || (person.name = "John")
person.name &&= "John" # same as: person.name && (person.name = "John")

objects[1] += 2 # same as: objects[1] = objects[1] + 2

objects[1] ||= 2 # same as: objects[1]? || (objects[1] = 2)
objects[1] &&= 2 # same as: objects[1]? && (objects[1] = 2)

name, age = "Crystal", 1

# The above is the same as this:
temp1 = "Crystal"
temp2 = 1
name = temp1
age = temp2

a = 1
b = 2
a, b = b, a
a # => 2
b # => 1

name, age, source = "Crystal,1,github".split(",")

# The above is the same as this:
temp = "Crystal,1,github".split(",")
name = temp[0]
age = temp[1]
source = temp[2]

names = "John", "Peter", "Jack"

# The above is the same as:
names = ["John", "Peter", "Jack"]

person.name, person.age = "John", 32

# Same as:
temp1 = "John"
temp2 = 32
person.name = temp1
person.age = temp2

objects[1], objects[2] = 3, 4

# Same as:
temp1 = 3
temp2 = 4
objects[1] = temp1
objects[2] = temp2
