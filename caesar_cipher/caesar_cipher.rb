#!/usr/bin/ruby

ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
PUNCTUATION = %w(, . ; ! ? : - ( ))

def caesar_cipher(text, count)
  new_string = ''
  text.each_char do |char|
    if PUNCTUATION.include?(char) || char == ' '
      new_string += char
    else
      index = ALPHABET.rindex(char.upcase) + count
      index >= 26 ? new_index = (index - 26) : new_index = index
      upcased?(char) ? new_char = ALPHABET[new_index] : new_char = ALPHABET[new_index].downcase
      new_string += new_char
    end
  end
  new_string
end

def upcased?(text)
  text == text.upcase
end