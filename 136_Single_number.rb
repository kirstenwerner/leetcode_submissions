# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    num_count = {}

    num_count.default = 0
    nums.each {|n| num_count[n] += 1}

    num_count.key(1)
end
