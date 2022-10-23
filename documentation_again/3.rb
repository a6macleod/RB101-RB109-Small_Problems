def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# this will print [4, 5, 3, 6]
# The values will be passed in left -> right filling in where they are needed
