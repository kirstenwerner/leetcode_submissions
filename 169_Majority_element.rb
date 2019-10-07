# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    hash = {}
    hash.default = 0
    result = 0

    nums.each do |num|
        hash[num] += 1
    end

    max = hash.values.max
    return hash.key(max)
end
