class Time

  Regex_for_time = /^([0-1]\d|[2][0-3])[:][0-5]\d[:][0-5]\d$/

  def self.validate?(string)

    Regex_for_time =~ string

  end

  def self.sum(string1 = '00:00:00', string2 = '00:00:00')

    if self.validate?(string1) && validate?(string2)
      string1, string2 = DateTime.parse(string1+'IST').to_time, DateTime.parse(string2+'IST').to_time
      q=string1+string2.sec+string2.min*60+string2.hour*3600
      "#{q.day-string1.day} days #{q.hour}:#{q.min}:#{q.sec}"
    else
      "not valid"
    end

  end

end