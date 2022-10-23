puts "please enter a word or multiple words"
string = gets.chomp

number_of_chars = string.split(' ').join('').length
puts "there are #{number_of_chars} characters in '#{string}'"


