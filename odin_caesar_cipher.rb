def caesar_cipher(string, key)
  initial_characters = string.split('')
  lower_letters = ('a'..'z').to_a
  upper_letters = ('A'..'Z').to_a

  new_characters = initial_characters.map do |character|
    if !(lower_letters + upper_letters).include?(character)
      character = character
    elsif character.downcase == character
      index = (lower_letters.index(character.to_s) + key) % 26
      lower_letters[index]
    elsif character.upcase == character
      index = (upper_letters.index(character.to_s) + key) % 26
      upper_letters[index]
    end
  end
  new_characters.join('')
end

p caesar_cipher("What a string!", 5)