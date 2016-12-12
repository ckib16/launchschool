# def hello
#   "Hello"
# end
#
# def world
#   "World"
# end
#
# def greet
#   hello + ' ' + world
# end
#
# greet

#####

# def car(make, model)
#   puts "#{make} #{model}"
# end
#
# car('Toyota', 'Corolla')

#####

# def time_of_day(bool)
#   if bool
#     puts "It's daytime!"
#   else
#     puts "It's nightime!"
#   end
# end
#
# daylight = [true, false].sample
# time_of_day(daylight)

#####

# def dog(name)
#   return name
# end
#
# def cat(name)
#   return name
# end
#
# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat('Ginger')}."

#####

# def assign_name(name = 'Bob')
#   name
# end
#
# puts assign_name == 'Bob'
# puts assign_name('Kevin') == 'Kevin'

#####

# def add(num1, num2)
#   num1 + num2
# end
#
# def multiply(num1, num2)
#   num1 * num2
# end
#
# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36

#####
#
# def name(one_name)
#   one_name.sample
# end
#
# def activity(one_activity)
#   one_activity.sample
# end
#
# def sentence(one_name, one_activity)
#   "#{one_name} went #{one_activity} today!"
# end
#
# names = ['Dave', 'Sally', 'George', 'Jessica']
# activities = ['walking', 'running', 'cycling']
#
# puts sentence(name(names), activity(activities))

#####

def print_me
  "I'm printing within the method"
end

puts print_me
