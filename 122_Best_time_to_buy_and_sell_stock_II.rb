# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    maxprofit = 0
    i = 1

    while i < prices.length do
        if prices[i] > prices[i - 1]
            maxprofit += prices[i] - prices[i - 1]
        end

        i += 1
    end

    return maxprofit
end
