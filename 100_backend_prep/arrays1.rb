# arrays1.rb
require 'pry'

def find_number(selection, choices)
  # binding.pry
  if choices.include?(selection)
    puts "Yes I have it"
  else
    puts "Nope"
  end
end

array = [1, 3, 5, 7, 9, 11]
number = 3

find_number(number, array)