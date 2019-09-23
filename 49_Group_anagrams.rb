# @param {String[]} strs
# @return {String[][]}
# def chars_a_match_chars_b(a, b)
#    a.chars.sort == b.chars.sort
# end


def group_anagrams(strs)
    match_hash = {}

    strs.each do |str|
        sorted = str.split(//).sort

        if match_hash[sorted]
            match_hash[sorted] << str
        else
            match_hash[sorted] = [str]
        end
    end

    match_hash.values
end 
