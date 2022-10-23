# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name

# 'Alice'
# 'Bob'

# name is assigned to 'Bob'
# save_name is also assigned to 'Bob'
# name is re-assigned to 'Alice' leaving save_name still pointing at 'Bob'

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# 'BOB'
# 'BOB'
# name is assigned to 'Bob'
# save_name is also assigned to 'Bob'
# name is muteated to be upcase leaving name and save_name pointing to the same memory space which has been altered to be 'BOB'
