# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  if nums.uniq! == nil
    nums.length
  else
    nums.uniq.length
  end
end
