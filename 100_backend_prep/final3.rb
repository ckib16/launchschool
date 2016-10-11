# final3.rb
#
a = [1,2,3,4,5,6,7,8,9,10]
odds = a.select do |num|
  num.odd?
end

puts "odds contain: #{odds}"