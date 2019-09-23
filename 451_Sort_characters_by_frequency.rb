# @param {String} s
# @return {String}
def frequency_sort(s)
  counts = Hash.new(0)
  s.each_char { |ch| counts[ch] += 1 }
  counts.sort_by { |ch, count| -count }.map { |ch, count| ch * count }.join
end
