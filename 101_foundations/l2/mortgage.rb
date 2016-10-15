# ASK:
# - Loan amount in $
# - APR like .05
# - Loan duration in months

# CALCULATE
# - APR -> monthly interest rate like .05
# - Loan duration in months

# FIND
# - monthly payment
# m = p * (j / (1 - (1 + j)**-n))

# To Do
# Validation, format float to 2 placed, loop
puts ""
puts "Welcome to MortgageCorp!"

loop do
  puts ""
  puts "--------"

  # Loan Amount
  puts "Loan amount: how much would you like to borrow?"

  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
      puts "Please enter positive integer"
    else
      break
    end
  end

  # APR
  puts "APR: what annual rate are you looking for?"
  puts "Please input as integer. Ex: 5 for 5%"

  apr = ''

  loop do
    apr = gets.chomp
    if apr.empty? || apr.to_f < 0
      puts "Must be positive integer"
    else
      break
    end
  end

  monthly_rate = (apr.to_f / 100) / 12

  # Duration
  puts "Duration in months: how many months do you want to pay it off?"

  duration = ''

  loop do
    duration = gets.chomp
    if duration.empty? || duration.to_i < 0
      puts "Must be positive integer"
    else
      break
    end
  end

  puts <<-MSG
  Ok you'd like to borrow
  $#{loan_amount}
  at a #{apr} annual rate
  which equates to a #{monthly_rate} monthly rate
  for #{duration} months.
  MSG

  monthly_payment = loan_amount.to_f * (monthly_rate / (1 - (1 + monthly_rate)**-duration.to_i))

  puts ""
  puts " ------ "
  puts "Your monthly payment will be $#{format('%02.2f', monthly_payment)}"

  puts "Do you want to calculate another mortgage? If so press Y"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "Thanks for calculating with us!"
