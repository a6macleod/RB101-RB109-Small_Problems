# input: array and hash
# output: string
# requirements:
#   array contains a full name, 2 or more elements
#   hash will have two values
#     title, occupation

# join the array into a variable with appropriate spaces
# out put a string and interpolate the name, title, and occupation

def greetings(array, hash)
  name = array.join(' ')
  "Hello, #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
