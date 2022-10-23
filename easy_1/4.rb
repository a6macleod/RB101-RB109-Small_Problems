# Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'TRUCK', 'suv'
]

#  working with a hash default 0
# each object gets incremented or
# gets added at value 1

def count_occurrences(arr)
  occurrences = Hash.new(0)

  arr.each do |element|
    occurrences[element.downcase.to_sym] += 1
  end
  occurrences.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)
