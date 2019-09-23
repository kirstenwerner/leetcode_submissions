# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    map = {}

    puts !!map

    while true
        sum = 0
        while n > 0
            sum = sum + (n % 10) * (n % 10)
            n = n / 10
        end
        return true if sum == 1
        return false if map[sum]

        map[sum] = true
        n = sum
    end
end
