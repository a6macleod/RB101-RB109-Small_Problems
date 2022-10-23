def palindrome?(string)
  string == string.reverse
end

# def real_palindrome?(string)
#   compressed_string = string.split('')
#     .select { |char| (char.match(/[0-9A-Za-z]/)) }
#     .join.downcase
#   compressed_string == compressed_string.reverse
# end

def real_palindrome?(string)
  compressed_string = string.downcase.delete('^a-z0-9')
  palindrome?(compressed_string)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
