dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, substring_array)
  substrings_found = Hash.new(0)
  word = word.downcase.split(' ')
  word.each do |item|
    substring_array.each do |string|
      substrings_found[string] += 1 if item.include?(string)
    end
  end

  puts substrings_found
end

substrings("Howdy partner, sit down! How's it going?", dictionary)