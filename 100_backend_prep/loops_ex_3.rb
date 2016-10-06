# loops_ex_3.rb
#

array = ['Bob', 'Joe', 'Chris']

array.each_with_index do |item, index|
  puts "#{index+1}. #{item}"
end