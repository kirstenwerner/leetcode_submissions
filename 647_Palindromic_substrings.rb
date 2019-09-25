# @param {String} s
# @return {Integer}
def count_substrings(s)
  sub_count = 0
  i = 0
  while i < s.length
    j = 1
    while (i + j) <= s.length
      x = s.slice(i, j)
      if (x == x.reverse)
        sub_count += 1
      end
      j += 1
    end
    i += 1
  end
  sub_count
end
