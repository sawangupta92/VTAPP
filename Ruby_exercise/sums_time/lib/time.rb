class Time

  Regex_for_time = /^([0-1]\d|[2][0-3])[:][0-5]\d[:][0-5]\d$/

  def self.validate?(time)
    Regex_for_time =~ time
  end

  def self.string_to_time(time)
    DateTime.parse(time + 'IST').to_time
  end

  def self.sum(time1 = '00:00:00', time2 = '00:00:00')

    if self.validate?(time1) && validate?(time2)
      time1, time2 = self.string_to_time(time1), self.string_to_time(time2)
      q = time1 + time2.sec + time2.min * 60 + time2.hour * 3600
      "#{q.day-time1.day} days #{q.hour}:#{q.min}:#{q.sec}"
    else
      "not valid"
    end

  end

end