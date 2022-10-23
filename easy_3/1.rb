def get_number(num)
  puts "==> Enter the #{num} number:"
  gets.chomp.to_i
end

def compare_last_number(first_five, last_number)
  if first_five.include?last_number
    "does"
  else
    "does not"
  end
end

def display_comparison(all_numbers)
  first_five = all_numbers.slice(0..4)
  last_number = all_numbers[5]
  is_in_first_5 = compare_last_number(first_five, last_number)
  puts "The number #{last_number} #{is_in_first_5} appear in #{first_five}."
end

all_numbers = []
all_numbers << get_number("1st")
all_numbers << get_number("2nd")
all_numbers << get_number("3rd")
all_numbers << get_number("4th")
all_numbers << get_number("5th")
all_numbers << get_number("6th")

display_comparison(all_numbers)
