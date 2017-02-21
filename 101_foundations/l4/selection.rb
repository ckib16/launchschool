produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# Get all the keys
produce_types = produce.keys
counter = 0
found_fruit = []

loop do
  # loop thru the array of hash keys (produce_types) using an incrementing counter
  current_produce = produce_types[counter]

  # Put any Fruit found in the hash into the blank array
  if produce[current_produce] == 'Fruit'
    found_fruit << current_produce
  end

  counter += 1
  break if counter == produce_types.size
end

found_fruit

#####

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# Get all the keys
produce_keys = produce.keys
counter = 0
found_fruit = {}

loop do
  # loop thru the array of hash keys (produce_keys) using an incrementing counter
  current_key = produce_keys[counter]
  current_value = produce[current_key]

  # Put any Fruit found in the hash into the blank array
  if current_value == 'Fruit'
    found_fruit[current_key] = current_value
  end

  counter += 1
  break if counter == produce_keys.size
end

found_fruit

#####

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2

    counter += 1
  end

  numbers
end

my_numbers = [1,4,3,7,2,6]
double_numbers!(my_numbers)
my_numbers

#####

def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == selection_criteria
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

general_select(produce, 'Vegetable')

#####

def multiply(numbers, multiplier)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * multiplier

    counter += 1
  end

  numbers
end

my_numbers = [1,4,3,7,2,6]
multiply(my_numbers, 3)
my_numbers

######
def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size

    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars
end

question = 'How many times does a particular character appear in this sentence?'
select_letter(question, 'a')
select_letter(question, 't')
select_letter(question, 'z')
