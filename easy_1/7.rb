def stringy(number, start=1)
  counter = start
  string = ''
  while string.length < number do
    if counter.odd?
      string << '1'
      counter += 1
    else
      string << '0'
      counter += 1
    end
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(7, 0) == '0101010'
