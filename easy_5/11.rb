def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# I believe that the object will be a new object since split returns an array which is a new object. Even if we join it back together later it is a entirely new object
