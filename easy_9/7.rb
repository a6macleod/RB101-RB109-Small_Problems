# input: string
# output: string
# requirements:
#   input is always first_name + ' ' + last_name
#   output should return last_name, comma, then first_name
#   output should be a single string
#   captitals preserved

# split the string into an array
# return using string interpolation with comma already in there

def swap_name(string)
  array = string.split(' ')
  "#{array[1]}, #{array[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
