def caps(foo)
  if foo.length > 10
    puts foo.upcase
  else
    puts foo
  end
end

puts "Enter in a string"

foo = gets.chomp
caps(foo)