def multisum(num)
  stored_values = []
  (0..num).each { |val| stored_values << val if val % 3 == 0 || val % 5 == 0 }
  stored_values.inject(:+) # or #reduce
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
