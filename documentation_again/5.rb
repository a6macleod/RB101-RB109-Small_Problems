a = %w(a b c d e)
# an array of strings ["a", "b", "c", "d", "e"]
puts a.fetch(7)
# traceback index 7 outside of array bounds: -5...5 (IndexError)
puts a.fetch(7, 'beats me')
# 'beats me'
puts a.fetch(7) { |index| index**2 }
# 49
