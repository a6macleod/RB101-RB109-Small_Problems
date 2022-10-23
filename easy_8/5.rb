# input: two integers (start/stop)
# output: integers and strings
# requirements:
#   print all numbers from START to STOP (inclusive)
#   if number is divisible by 3 "fizz"
#   if number is divisible by 5 "buzz"
#   if number is divisible by 3 & 5 "fizz buzz"

# print check if number is divisible by 3 & 5, print "fizz buzz"
# check if number is divisible by 3, print "fizz"
# check if number is divisible by 5, print "buzz"
# if none of the above, print the number

def fizzbuzz(start, stop)
  start.upto(stop) do |num|
    if num % 3 == 0 && num % 5 == 0
      puts "fizz buzz"
    elsif num % 3 == 0
      puts "fizz"
    elsif num % 5 == 0
      puts "buzz"
    else
      puts num
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
