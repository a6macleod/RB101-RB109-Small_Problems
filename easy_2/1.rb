# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.
age = rand(20..200)
puts "Enter your name"
name = gets.chomp

puts "#{name != '' ? name : "Teddy"} is #{age} years old!"
