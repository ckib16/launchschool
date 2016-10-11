# boolean_regex.rb
#

def has_a_b?(string)
  if /b/.match(string)
    puts "Match!"
  else
    puts "No match"
  end
end

has_a_b?("basketball")
has_a_b?("hockey")