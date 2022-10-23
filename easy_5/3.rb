# input: String ('hh:mm') time
# ouput: integer (minutes)
# requirements:
#   Take in a string showing an positive time
#   output an integer representing the minutes correlating to the time in 24 cycle

# convert the string to integer hours and minutes
# add the two together and return

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = 1440

def convert_string_time(string)
  hours = string.slice(0..1).to_i
  minutes = string.slice(-2..-1).to_i
  [hours, minutes]
end

def after_midnight(string)
  hours, minutes = convert_string_time(string)
  total_minutes = (hours * MINUTES_PER_HOUR) + minutes
  total_minutes -= MINUTES_PER_DAY if total_minutes >= (MINUTES_PER_DAY)
  total_minutes
end

def before_midnight(string)
  total_minutes = MINUTES_PER_DAY - after_midnight(string)
  total_minutes -= MINUTES_PER_DAY if total_minutes >= (MINUTES_PER_DAY)
  total_minutes

end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
