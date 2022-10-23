# input: number (float or integer)
# output: string
# requirements:
#   degrees 0 - 360
#   string returned is degrees, minutes, seconds
#   use the DEGREE character, ' for mins, and " for seconds
#   using leading 0's for minutes and secons

# get degrees
# get minutes
# get seconds
# return "#{degree}#{DEGREE}'#{minute}#{second}\""

# A better solution is given.
# seconds_per_minute = 60
# minute_per_degree = 60
# seconds_per_degree = seconds_per_minute * minute_per_degree
# calculate total_seconds num * secons_per_degree.round
# calculate degrees
# degrees, remaining_seconds = total_seconds.divmod(seconds_per_degree)
# minutes, seconds = remaining_seconds.divmod(seconds_per_minute)

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def dms(num)
  degree = num.floor
  raw_minute = (num - degree) * MINUTES_PER_DEGREE
  minute = raw_minute.floor
  raw_second = (raw_minute - raw_minute.floor) * SECONDS_PER_MINUTE
  second = raw_second.floor
  puts "#{degree}#{DEGREE}#{minute.to_s.rjust(2, '0')}'#{second.to_s.rjust(2, '0')}\" "
  return "#{degree}#{DEGREE}'#{minute}#{second}\""
end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
