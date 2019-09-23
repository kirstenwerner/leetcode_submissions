# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  rob_include_nth, rob_exclude_nth = 0, 0

  nums.each do |num|
    rob_include_nth, rob_exclude_nth =
      rob_exclude_nth + num, [rob_exclude_nth, rob_include_nth].max
  end

  return rob_include_nth if rob_include_nth > rob_exclude_nth
  return rob_exclude_nth
end
