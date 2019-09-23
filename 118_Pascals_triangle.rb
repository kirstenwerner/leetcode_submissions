# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  i = 0
  pascals_triangle = []

  num_rows.times do
    pascals_triangle[i] = Array.new

    if i == 0
      pascals_triangle[i].push(1)
    elsif i == 1
      pascals_triangle[i][0], pascals_triangle[i][i] = 1, 1
    else
      pascals_triangle[i].fill(0, 0, i + 1)
      pascals_triangle[i][0], pascals_triangle[i][-1] = 1, 1

      pascals_triangle[i].each.with_index do |num, index|

        if index != 0 && index != pascals_triangle[i].length - 1
          pascals_triangle[i][index] = pascals_triangle[i - 1][index - 1] + pascals_triangle[i - 1][index]
        end

      end
    end

    i += 1
  end

  pascals_triangle
end
