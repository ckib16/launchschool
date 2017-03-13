def generate_UUID

  # make a 'building blocks' array of digits & letters
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'z').each { |letter| characters << letter}

  # empty string for appending samples of characters
  uuid = ''

  # format uuid into sections of length
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid << characters.sample }
    uuid << '-' unless index >= sections.size - 1
  end

  # returen uuid
  uuid
end

generate_UUID


##### repeat

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'z').each { |letter| characters << letter }

  uuid = ''
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid << characters.sample }
    uuid << '-' unless index >= sections.size - 1
  end

  uuid
end

generate_UUID
