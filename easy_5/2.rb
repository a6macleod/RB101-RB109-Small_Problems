# input: integer (positive or negative)
# output: string of the 24 hour time (hh:mm)
# requirements:
#   input is minutes, either starting 24 hours (+) or before 24 (-)
#   don't use Date or Time class
#   assume an integer input

# calculate how many minutes are in 24 hours (1440 mins)
# if positive input, start from 0
# if negative input, start of hour 1440
# calculate the current time in minutes (input +/- starting minutes (0 or 1440))
# convert minutes to 24 hours

def hour_time(input_mins)
  hours, minutes = input_mins.divmod(60)
  "#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}"
end

def adjust_total_mins(num)
  while num > 1440
    num -= 1440
  end
  while num < -1440
    num += 1440
  end
  num
end

def time_of_day(num)
  starting_time = 0
  starting_time = 1440 if num < 0
  adjusted_mins = adjust_total_mins(num)
  current_time = starting_time + adjusted_mins
  hour_time(current_time)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
