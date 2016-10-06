# loops_ex_4.rb
require 'pry'

def countdown(input)
  # binding.pry
  if input >= 0
    puts input
    input -= 1
    countdown(input)
  else
    puts "Done with recursion"
  end
end

x = 10
countdown x