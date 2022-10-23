array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# this should pring ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']
# array1 is set with some values
# array2 is declared with an empty array
# each value (and memory address for that value) is then added to array2 from array1
# array1 then iterates each of its values and makes it upcase if it starts with a 'C' or 'S'.
# because the memory spaces for the individual values in array1 are shared with array2, mutating the individual values in array1 affect array2
