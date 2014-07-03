class Time

  Regex_to_validate = /^([0-1]\d|[2][0-3])[:][0-5]\d[:][0-5]\d$/

  def validate?(string1, string2)

    if(Regex_to_validate =~ string1 && Regex_to_validate =~ string2)
      true
    else
      nil
    end

  end

  def sum(string1 = '00:00:00', string2 = '00:00:00')

    if validate?(string1, string2)
      string1, string2 = DateTime.parse(string1), DateTime.parse(string2)
      result = []
      result[0], result[1], result[2] = string1.second + string2.second, string1.minute + string2.minute, string1.hour + string2.hour
      0.upto(2) do |i|

        if result[i] > 59
          result[i] -= 60
          result [i + 1] += 1
        end

      end

      if result.last > 23
        result[result.length] = '1 day and '
        result.last + result[0..result.length - 2].reverse.join(':')
      else
        result[0..result.length - 1].reverse.join(':')
      end

    else
      "not valid"
    end

  end

end