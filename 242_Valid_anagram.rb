# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    s_array = s.split(//)
    t_array = t.split(//)

    if s_array.sort == t_array.sort
        return true
    else
        return false
    end
end\
