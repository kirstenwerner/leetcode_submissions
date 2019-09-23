# @param {String} s
# @return {Integer}
def roman_to_int(s)
    roman_array = s.split(//)
    int_array = []
    sum = 0

    roman_array.each do |sym|
    int = 0
      case sym
      when "I"
        int = 1
      when "V"
        int = 5
      when "X"
        int = 10
      when "L"
        int = 50
      when "C"
        int = 100
      when "D"
        int = 500
      when "M"
        int = 1000
      end

      int_array.push(int)
    end

    int_array.each.with_index do |num, i|
      case num
      when 1
        if int_array[i+1] == 5 || int_array[i+1] == 10
          int_array[i] = (num * -1) + int_array[i+1]
          int_array.delete_at(i+1)
        end

      when 10
        if int_array[i+1] == 50 || int_array[i+1] == 100
          int_array[i] = (num * -1) + int_array[i+1]
          int_array.delete_at(i+1)
        end

      when 100
        if int_array[i+1] == 500 || int_array[i+1] == 1000
          int_array[i] = (num * -1) + int_array[i+1]
          int_array.delete_at(i+1)
        end
      end
    end

  int_array.sum
end
