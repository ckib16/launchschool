# stuff_ex1
#

a = ['laboratory', 'experiment', 'Pans labyrinth', 'elaborate', 'polar bear']

def match(string)
  if /lab/.match(string)
    puts "Match for 'lab'"
  else
    puts "No Match"
  end
end

a.each do |string|
  match(string)
end