# Greeting a user
#
# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.
#
# Examples
#
# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# Input - name (string)
# Output - normal greeting or CPAS GREETING
# Data - string
# Algo:
# -> compare name input to "name!" if same use CAPS GREETING
#

def greeting
  puts "=> What is your name?"
  input_name = gets.chomp

  if input_name.include?('!')
    puts "HELLO #{input_name.upcase.tr('!', '')}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{input_name}."
  end
end

greeting
