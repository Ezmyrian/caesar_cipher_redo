require 'pry-byebug'
#take in string and offset
#create array for upper and array for lower cases
#split string into characters
#check character cases
#find index of character in matching upper/lower case array OR
#  store non alpha char in hash with location data (k/v +> location: char)
#offset character by input parameter.
#create new caesar array and input characters and spaces, then insert hash at location value
#return caesar array

def caesar_cipher(string_input, offset = 0)
  uppercase_array = ("A".."Z").to_a 
  lowercase_array = ("a".."z").to_a
  split_string = string_input.split('')
  caesar_cipher = []
  split_string.each_with_index do |character, index|
    if uppercase_array.include?(character)
      character_location = uppercase_array.find_index(character)
      adjusted_offset = (offset + character_location) % 26
      caesar_cipher[index] = uppercase_array[adjusted_offset]
    elsif lowercase_array.include?(character) 
      character_location = lowercase_array.find_index(character)
      adjusted_offset = (offset + character_location) % 26
      caesar_cipher[index] = lowercase_array[adjusted_offset]
    else
      caesar_cipher[index] = character
    end
  end
  caesar_cipher
end

caesar_cipher("Narc3leptiCs uN1te!... tomorr0w?", -25)