puts 'Chris' + ' Kibble'

movies = {a: 1950, b: 1960, c: 1970, d: 1980, e:1990}
puts "----"
puts "via Hash"
puts movies[:a]
puts movies[:b]
puts movies[:c]
puts movies[:d]
puts movies[:e]

movie_dates = [1950, 1960, 1970, 1980, 1990]
puts "----"
puts "Via array"
puts movie_dates[0]
puts movie_dates[1]
puts movie_dates[2]
puts movie_dates[3]
puts movie_dates[4]

starting_factorial = 5*4*3*2*1
puts "----"
puts 'Factorials'
puts '5! = ' + starting_factorial.to_s
puts 6*"#{starting_factorial}".to_i
puts 7*6*"#{starting_factorial}".to_i
puts 8*7*6*"#{starting_factorial}".to_i

puts "-----"
puts "squares"
a = 1.234
b = 4.56
c = 7.89
puts a*a
puts b*b
puts c*c