# (1..99).each do |num|
#   puts num if num.odd?
# end

puts (1..99).select { |num| num.odd? }

