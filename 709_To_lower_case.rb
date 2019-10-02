# @param {String} str
# @return {String}

# def to_lower_case(str)
#     str.downcase
# end

def to_lower_case(str)
  str_array = str.split(//)
  upcase_alphabet = ("A".."Z").to_a
  downcase_alphabet = ("a".."z").to_a
  alphabet_hash = {}

  upcase_alphabet.each_with_index do |up_letter, i|
    alphabet_hash[up_letter] = downcase_alphabet[i]
  end

  str_array.each_with_index do |letter, i|
    if alphabet_hash[letter]
      str_array[i] = alphabet_hash[letter]
    end
  end

  return str_array.join
end
