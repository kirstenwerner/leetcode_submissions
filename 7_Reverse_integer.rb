# @param {Integer} x
# @return {Integer}
def reverse(x)
    array = x.to_s.split(//)

    if array[0] == "-"
      negative = array.shift
    end

    reversed_array = array.reverse

    new_int = negative ? (negative + reversed_array.join).to_i : reversed_array.join.to_i

    if new_int.between?(-2**31, 2**31-1)
      new_int
    else
      0
    end
end
