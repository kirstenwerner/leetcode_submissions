# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  char_array = s.split(//)
  # index = 0
  result = -1

  while char_array.count > 0
    if char_array.count(char_array[0]) > 1
      char_array.delete(char_array[0])
      # index += 1
    elsif char_array.count(char_array[0]) == 1
      result = char_array[0]
      break
    end
  end

    if result == -1
        return result
    else
        return s.index(result)
    end
end
