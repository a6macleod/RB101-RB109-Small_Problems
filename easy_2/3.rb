puts "What is the bill?"
bill = gets.chomp.to_f
puts "what is the tip (%)?"
tip_percent = (gets.chomp.to_f) / 100
tip_amount = (bill * tip_percent)
bill_total = (tip_amount + bill)
puts "The tip is $#{sprintf('%.2f', tip_amount)}"
puts "The total is $#{sprintf('%.2f', bill_total)}"

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0
