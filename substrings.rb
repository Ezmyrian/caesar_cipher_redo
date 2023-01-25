require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, substring_array)
  substrings_found = Hash.new(0)
  word = word.downcase
  substring_array.each do |item|
    
    substrings_found[item] += 1 if word.include?(item)
  end
  
  print substrings_found
end

substrings("Howdy", dictionary)