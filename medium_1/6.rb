# input: string
# output: integer or nothing
# requiremnts:
#   Create a stack-and-register mini-language
#   register initialzes as 0
#   All operations are integer operations (** DIV and MOD**)
#   Can assume all commands are correct and, no error handling for missing values etc.
#   the language should contain the following commands
#     n - Place a value n in the "register". Do not modify the stack. (first word in input string)
#     PUSH - Push the register value on to the stack. Leave the value in the register. ex. 5 PUSH
#     ADD - Pops a value from the stack and adds it to the register value, storing the result in the register.
#     SUB - Pops a value from the stack and subtracts it from the register value, storing the result in the register.
#     MULT - Pops a value from the stack and multiplies it by the register value, storing the result in the register.
#     DIV - Pops a value from the stack and divides it into the register value, storing the integer result in the register.
#     MOD - Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
#     POP - Remove the topmost item from the stack and place in register
#     PRINT - Print the register value

# split the input into an array
# iterate the input array
# if it is a number, store it in the register
# if it is a command
#   complete the command based on the definition above

def is_integer?(string)
  string.to_i.to_s == string
end

def minilang(input_command)
  register =  0
  stack = []
  input_command.split.each do |command|
    # p "#{command} is an integer #{is_integer?(command)}"
    if is_integer?(command)
      register = command.to_i
    else
      case command
      when 'PUSH'
        stack << register.to_i
      when 'ADD'
        register += stack.pop
      when 'SUB'
        register -= stack.pop
      when 'MULT'
        register *= stack.pop
      when 'DIV'
        register = (register / stack.pop)
      when 'MOD'
        register = (register % stack.pop)
      when 'POP'
        register = stack.pop
      when 'PRINT'
        puts register
      else
        puts 'Something went wrong!'
      end
    end
  end
end

# minilang('PRINT')
# 0

# minilang('5 PUSH 3 MULT PRINT')
# 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

# minilang('5 PUSH POP PRINT')
# 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT')
# 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT')
# 12

# minilang('-3 PUSH 5 SUB PRINT')
# 8

# minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# (3 + (4 * 5) - 7) / (5 % 3)
minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')
# 8
