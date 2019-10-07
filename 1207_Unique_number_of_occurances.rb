# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  hash_1 = {}
  hash_1.default = 0
  hash_2 = {}


  arr.each do |x|
    hash_1[x] += 1
  end

  hash_1.each do |key, value|
    if hash_2[value]
      return false
    else
      hash_2[value] = key
    end
  end

  return true
end
