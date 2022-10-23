# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer

def repeat(string, number)
  number.to_i.times { puts string }
end

repeat("hello", 3)
