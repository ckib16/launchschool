# Counting the Number of Characters
#
# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.
#
# input: Please write word or multiple words: walk
# output: There are 4 characters in "walk".
#
# input: Please write word or multiple words: walk, don't run
# output: There are 13 characters in "walk, don't run".

# Input - string
# Output - string with interpolated calc
# Data - string
# Algo:
# - puts + gets input
# - characters = input.chars
# - interp result

puts "==> Please write word or multiple words:"
word_input = gets.chomp

number_of_characters = word_input.chars.count

puts "There are #{number_of_characters} characters in \"#{word_input}\""
