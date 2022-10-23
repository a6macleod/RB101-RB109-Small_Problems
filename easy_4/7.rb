# input: string
# output: integer
# requirements:
#   don't use String#to_i or Integer()

# start with a variable at 0, add 1 until the integer converted to a string == the string

def string_to_integer(string)
  integer = 0
  while integer.to_s != string
    integer +=1
  end
  integer
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
