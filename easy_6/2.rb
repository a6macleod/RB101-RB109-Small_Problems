# input: array of strings
# output: array of strings (vowels removed)
# requirements:
#   returned string should have vowels removed
#   a, e, i, o, u and A, E, I, O, U
#   capitals are returned
#   if all letters are removed an empty string is returned

def remove_vowels(arr)
  arr.map { |string| string.delete "aeiouAEIOU" }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
