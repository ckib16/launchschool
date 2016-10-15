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

puts "Welcome to MortgageCorp!"

puts "Loan amount: how much would you like to borrow?"
loan_amount = gets.chomp.to_i

puts "APR: what annual rate are you looking for? Please input as decimal like 0.05"
apr = gets.chomp.to_f
monthly_rate = apr / 12

puts "Duration in months: how many months do you want to pay it off?"
duration = gets.chomp.to_i

puts <<-MSG
Ok you'd like to borrow
$#{loan_amount}
at a #{apr} annual rate
which equates to a #{monthly_rate} rate
for #{duration} months.
MSG

montly_payment = loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**-duration))

puts "Your monthly payment will be $#{montly_payment}."
