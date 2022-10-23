def average(arr)
  sum = arr.reduce { |sum, num| sum + num }
  # arr.each { |num| sum += num }
  if arr.count.even?
    average = (sum / arr.length)
  else
    average = (sum.to_f / arr.length).round(2)
  end
  average
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average([9, 47, 23]) == 26.33
