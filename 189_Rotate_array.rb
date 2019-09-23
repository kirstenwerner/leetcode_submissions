# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  k.times do
    nums.insert(0, nums.slice(-1)).slice!(-1)
  end

  nums
end
