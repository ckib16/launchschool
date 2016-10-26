# 4

def uuid
  random_letters = 'a'..'z'
  random_numbers = (0..9)
end                          # => :uuid

# f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91

random_letters = ('a'..'z').to_a  # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
random_numbers = (0..9).to_a      # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

random_characters = ('a'..'z').to_a + (0..9).to_a  # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

random_characters.sample(3).to_s  # => "[\"s\", 0, 5]"

def generate_UUID
  characters = []                                     # => []
  (0..9).each { |number| characters << number.to_s }  # => 0..9
  ('a'..'f').each { |letter| characters << letter }   # => "a".."f"

  uuid = ""                                        # => ""
  sections = [8, 4, 4, 4, 12]                      # => [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|     # => [8, 4, 4, 4, 12]
    section.times { uuid += characters.sample }    # => 8, 4, 4, 4, 12
    uuid += '-' unless index >= sections.size - 1  # => "98a0df48-", "98a0df48-5f8a-", "98a0df48-5f8a-aa68-", "98a0df48-5f8a-aa68-2057-", nil
  end                                              # => [8, 4, 4, 4, 12]

  uuid  # => "98a0df48-5f8a-aa68-2057-7dbc6e43c04e"
end     # => :generate_UUID

generate_UUID  # => "98a0df48-5f8a-aa68-2057-7dbc6e43c04e"

# 5
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")      # => ["1", "2", "3", "4", "5"], ["1", "2", "3"], ["1", "2", "3", "4"]
  return false unless dot_separated_words.size == 4  # => false, false, true

  while dot_separated_words.size > 0 do         # => true
    word = dot_separated_words.pop              # => "4"
    return false unless is_an_ip_number?(word)  # ~> NoMethodError: undefined method `is_an_ip_number?' for main:Object
  end

  true
end     # => :dot_separated_ip_address?

dot_separated_ip_address?("1.2.3.4.5")  # => false
dot_separated_ip_address?("1.2.3")      # => false
dot_separated_ip_address?("1.2.3.4")

# ~> NoMethodError
# ~> undefined method `is_an_ip_number?' for main:Object
# ~>
# ~> /Users/Chris/code/launchschool/101_foundations/l3/hard.rb:41:in `dot_separated_ip_address?'
# ~> /Users/Chris/code/launchschool/101_foundations/l3/hard.rb:49:in `<main>'
