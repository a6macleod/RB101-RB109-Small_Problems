puts "What is your age?"
age = gets.chomp
puts "At what age would you like to retire?"
retire_age = gets.chomp

current_date = Time.new
years_to_retirement = retire_age.to_i - age.to_i
retirement_year = current_date.year + years_to_retirement

puts "It's #{current_date.year} You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years of work to go!"

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
