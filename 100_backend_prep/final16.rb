# final16.rb
#
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

words = a.map do |word|
  word.split(' ')
end

puts words