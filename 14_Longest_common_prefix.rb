# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  loop do
    str_a = strs.shift
    str_b = strs.shift
    return str_a.to_s if str_b.nil?

    common = longest_common_prefix_between(str_a, str_b)
    strs.unshift(common)
  end
end


def longest_common_prefix_between(str_a, str_b)
  len = [str_a.length, str_b.length].min

  result_str = ""
  len.times do |i|
    if str_a[i] == str_b[i]
      result_str += str_a[i]
    else
      break
    end
  end

  result_str
end
