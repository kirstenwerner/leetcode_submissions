# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  array = []

  nums.each.with_index do |num, index|
    difference = target - num
    filtered_array = [].replace(nums)
    filtered_array[index] = nil

    if !!(i = filtered_array.find_index(difference))
      array = [index, i]
      break
    end

  end

  array
end
