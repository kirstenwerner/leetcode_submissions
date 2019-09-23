# @param {Integer} candies
# @param {Integer} num_people
# @return {Integer[]}
def distribute_candies(candies, num_people)
  candies_possesed = [0] * num_people
  i, counter = 0, 0

  until candies == 0 do
    counter += 1 #increase the number of candies given each turn
    candies_remaining = candies - counter # subtract number of candies already distributed from total candies

    if candies_remaining > 0
      candies_possesed[i] += counter
      candies = candies_remaining
    elsif candies_remaining <= 0
      candies_possesed[i] += candies
      candies = 0
    end

    i += 1 # incriment index to go to next person to recieve candy
    i = 0 if i == num_people # reset index to 0 if index is greater than last element index
  end

  candies_possesed
end
