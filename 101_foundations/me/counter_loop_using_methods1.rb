def increment(total)
  total += 1
end

counter = 0

loop do
  puts "increment - y / n / q?"
  input = gets.chomp.downcase

  if input.start_with?('y')

    # works with brute force, no method used to increment
    # counter += 1

    # doesn't work because not ASSIGNING the method's returned value to the  local variable. This just returns a new value - 1, 2, 3 etc - but DOESN'T mutate `counter` variable to "hold" or "contain" that new value.
    # increment(counter)

    # works b/c we **ASSIGN THE LOCAL VARIABLE TO THE RETURN VALUE OF THE METHOD** so that the local variable is mutated/updated
    counter = increment(counter)
  elsif input.start_with?('q')
    break
  end

  puts "Counter is #{counter}"
  puts ""
end


puts "Exited counter loop"
