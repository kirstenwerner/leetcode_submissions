# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
    array = n.to_s(2).split(//)
    hash = {}
    hash.default = 0

    array.each do |bit|
        if bit == "1"
            hash["1"] += 1
        end
    end

    hash["1"]
end
