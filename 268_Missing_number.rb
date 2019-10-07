# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  min = nums.min
  max = nums.max
  full_array = Array (min..max)
  nums_hash = {}

  if min != 0
      return 0
  elsif nums == [0]
    return 1
  end

  nums.each do |num|
    nums_hash[num] = 1
  end

  full_array.each do |num|
    if !nums_hash[num]
      return num
    end
  end

    return max + 1

end
