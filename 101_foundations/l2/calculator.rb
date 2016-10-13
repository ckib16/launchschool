# ask for 2 numbers
# ask for operation
# perform operation
# output result

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operator_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end
prompt("Welcome to calculator! Enter your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure you use a valid name")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  number1 = ''
  loop do
    prompt("What's the 1st number?")
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt("Hmmm...looks like an invalid input")
    end
  end

  prompt("The 1st number is #{number1}!")

  number2 = ''
  loop do
    prompt("What's the 2nd number?")
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt("Hmmm...looks like an invalid input")
    end
  end

  prompt("Your two numbers are #{number1} and #{number2}.")

  operator_prompt = <<-MSG
    What operation would you like?
    1)Add
    2)Subtract
    3)Multiply
    4)Divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, 4")
    end
  end

  prompt("#{operator_to_message(operator)} your two numbers...")

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}.")

  prompt("Do you want to use calculator again? If so, press Y")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for using Calculator! Goodbye.")
