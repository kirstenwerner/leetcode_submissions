# @param {Integer} num
# @return {String}
def int_to_roman(num)
  counter = num
  roman = []

  while counter > 0
    puts counter
    if counter - 1000 >= 0
      counter -= 1000
      roman.push("M")
    elsif counter - 500 >= 0
      counter -= 500
      roman.push("D")
    elsif counter - 100 >= 0
      counter -= 100
      roman.push("C")
    elsif counter - 50 >= 0
      counter -= 50
      roman.push("L")
    elsif counter - 10 >= 0
      counter -= 10
      roman.push("X")
    elsif counter - 5 >= 0
      counter -= 5
      roman.push("V")
    elsif counter - 1 >= 0
      counter -= 1
      roman.push("I")
    end
  end

  numeral = roman.join

  numeral["IIII"] = "IV" if numeral["IIII"]
  numeral["XXXX"] = "XL" if numeral["XXXX"]
  numeral["CCCC"] = "CD" if numeral["CCCC"]
  numeral["VIV"] = "IX" if numeral["VIV"]
  numeral["LXL"] = "XC" if numeral["LXL"]
  numeral["DCD"] = "CM" if numeral ["DCD"]

  return numeral
end
