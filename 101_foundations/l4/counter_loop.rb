require 'pry'
counter = 0

def increment(total)
  total += 1
end

loop do
  puts "increment - y / n / q?"
  input = gets.chomp.downcase

  if input.start_with?('y')

    # works with brute force, no method used to increment
    # counter += 1

    # doesn't work because not ASSIGNING the method's returned value to the local variable. This just returns a new number - 1, 2, 3 etc. - but DOESN'T mutate `counter` to "hold" or "contain" or be assigned that new number.
    # increment(counter)

    # works b/c we **ASSIGN THE LOCAL VARIABLE TO THE RETURN VALUE OF THE METHOD** so that the local variable is mutated/updated. This ensures the method does its job (whatever action it is) and we guaantee that the local variable is mutated as well be assigning it outside of the method.
    counter = increment(counter)

  elsif input.start_with?('q')
    break
  end

  puts "Counter is #{counter}"
  puts ""
end

puts "Exited counter loop"
