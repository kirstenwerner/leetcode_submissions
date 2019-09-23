# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  nums1.reverse!
  nums1.each.with_index do |num, i|
    if num == 0 && n > 0
      nums1[i] = nums2[0]
      nums2.shift
        n -= 1
    # elsif num != 0
    #   break
    end
  end
  nums1.sort!
end
