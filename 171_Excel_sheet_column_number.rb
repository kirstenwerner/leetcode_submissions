# @param {String} s
# @return {Integer}
def title_to_number(s)
  s_array = s.split(//)
  number_array = []

  s_array.each do |letter|
    s_to_i = letter.tr("A-Z", "1-9a-q").to_i(27)
    s_to_i -= 1 if s_to_i > 27
    number_array << s_to_i
  end

  i = number_array.length - 1

  if number_array.length > 1
    number_array.each.with_index do |num, idx|
        number_array[idx] = num * (26 ** i)
        i -= 1
    end
  end

  return number_array.sum
end
