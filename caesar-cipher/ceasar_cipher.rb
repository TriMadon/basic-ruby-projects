def caesar_cipher(string, shift_factor)
  regex = /[a-zA-Z]/
  shift_factor %= 26
  char_arr = string.chars.map do |char|
    regex =~ char ? shift_letter(char, shift_factor) : char
  end
  char_arr.join('')
end

def shift_letter(letter, shift)
  base_ord = letter.upcase == letter ? 'A'.ord : 'a'.ord
  ((letter.ord + shift - base_ord) % 26 + base_ord).chr
end

puts caesar_cipher('What a string!', 5) # => "Bmfy f xywnsl!"
