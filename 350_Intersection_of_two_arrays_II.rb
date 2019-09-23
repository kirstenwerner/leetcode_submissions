# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  intersection = []

  nums1.each do |num|
    i = nums2.find_index(num)
    if nums2.include?(num)
      intersection.push(num)
      nums2.delete_at(i)
    end
  end

  intersection
end 
