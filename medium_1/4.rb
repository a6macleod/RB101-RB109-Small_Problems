# input: integer (number of lights)
# output: array of integers
# requirements:
#   number from 1 to n
#   all lights start off
#   round 1: all lights toggle on (true)
#   round 2: toggle by 2's up to n (2, 4, 6 etc)
#   round 3: toggle by 3's up to n (3, 6, 9 etc)
#   n rounds: toggle up to n number of rounds
#   return all the values that are on

# create an empty array
# populate the array with hashes where key = number and value = false
# counter at 0 to iterate to n number of. increments by 1
# counter at 1 to match each array element/ key name

# create a counter = 1
# loop and
# toggle switches passing in the counter as the incrementer
#   iterate each element of the array and if % counter == 0 then toggle
#   else next
# counter += 1
# break when counter >= n -1
# select and return all the keys that have a value true

def build_lights(number)
  array = []
  counter = 0
  number.times do
    array << {counter + 1 => false}
    counter += 1
  end
  array
end

def light_toggler(number_of_lights)
  lights = build_lights(number_of_lights)
  current_round = 0
  loop do
    current_round += 1
    light_position = 0
    loop do
      key = lights[light_position].keys[0]
      value = lights[light_position][key]
      if key % current_round == 0
        lights[light_position][key] = !value
      end
      light_position += 1
      break if light_position >= number_of_lights
    end
    break if current_round >= number_of_lights
  end
  lights_on = []
  lights.each do |element|
    key = element.keys[0]
    if element[key] == true
      lights_on << key
    end
  end
  lights_on
end

p light_toggler(1) == [1]
p light_toggler(2) == [1]
p light_toggler(3) == [1]
p light_toggler(4) == [1, 4]
p light_toggler(5) == [1, 4]
p light_toggler(10) == [1, 4, 9]
p light_toggler(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]

