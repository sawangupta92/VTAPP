class Time

  REGEX_FOR_TIME = /^([0-1]\d|[2][0-3])[:][0-5]\d[:][0-5]\d$/

  def self.validate?(string)
    REGEX_FOR_TIME =~ string
  end

  def self.string_to_time(string)
    DateTime.parse(string + 'IST').to_time
  end

  def self.sum(string1 = '00:00:00', string2 = '00:00:00')

    if validate?(string1) && validate?(string2)
      time1, time2 = self.string_to_time(string1), self.string_to_time(string2)
      final_time = time1 + time2.sec + time2.min * 60 + time2.hour * 3600
      final_string = "#{ final_time.hour }:" + "#{ final_time.min }:" + "#{ final_time.sec }"
      if time1.hour+time2.hour > 23
        "1 day #{ final_string }"
      else
        "#{ final_string }"
      end
    else
      'not valid'
    end

  end

end
