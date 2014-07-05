require 'date'

class Time

  REGEX_FOR_TIME = /^([0-1]\d|[2][0-3])[:][0-5]\d[:][0-5]\d$/

  def self.validate?(time)
    REGEX_FOR_TIME =~ time
  end

  def self.string_to_time(time)
    DateTime.parse(time + 'IST').to_time
  end

  def self.sum(*time)
    if time.all? { |temp_time| self.validate?(temp_time.to_s) }
      time = time.map { |temp_time| self.string_to_time(temp_time.to_s) }
      temp_total_time = total_time = self.string_to_time('00:00:00')
      time.map do |temp_time|
        total_time += temp_time.sec + temp_time.min * 60 + temp_time.hour * 3600
      end
      "#{ total_time.day - temp_total_time.day } days #{ total_time.hour }:#{ total_time.min }:#{ total_time.sec }"
    else
      'not valid'
    end
  end

end
