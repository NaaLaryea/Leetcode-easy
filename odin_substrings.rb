# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found. 

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  word = word.downcase
  word_array = word.split(' ')
  count = word_array.reduce(Hash.new(0)) do |result, each_word|
    dictionary.each do |var|
      if each_word.include?(var)
        result[var] += 1
      end
    end
    result
  end
  count
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
