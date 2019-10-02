# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
    jewel_array = j.split(//)
    stone_array = s.split(//)
    hash = {}
    result = 0

    jewel_array.each do |jewel|
       hash[jewel] = 0
    end

    stone_array.each do |stone|
        result += 1 if hash[stone]
    end

    return result
end
