# @param {Integer} x
# @param {Integer} y
# @param {Integer} bound
# @return {Integer[]}
def powerful_integers(x, y, bound)
  i = 0
  pwr_int_array = []

  until x**i > bound
    j, pwr_int = 0, 0

    while pwr_int < bound
      pwr_int = x**i + y**j
      pwr_int_array.push(pwr_int) if pwr_int <= bound
      break if y == 1
      j += 1
    end
    break if x == 1
    i += 1
  end

  pwr_int_array.uniq
end 
