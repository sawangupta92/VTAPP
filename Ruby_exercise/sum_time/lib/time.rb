require 'date'

class Time
  REGEX = /^([0-1]\d|[2][0-3])[:][0-5]\d[:][0-5]\d$/

  def self.sum(*time)
    if time.all? { |temp_time| valid?(temp_time.to_s) }
      @temp_total_time = @total_time = DateTime.parse('00:00:00' + 'IST').to_time
      time.map do |temp_time|
        temp_time=DateTime.parse(temp_time + 'IST').to_time
        @total_time += (@temp_total_time - temp_time).abs
      end
      @total_time=DateTime.parse('0000-01-01 00:00:00' + 'IST').to_time + (@total_time - Time.now)
      str=''
      @total_time.year > 0 ? str.concat("#{@total_time.year} years ") : nil
      @total_time.month > 1 ? str.concat("#{@total_time.month-1} months ") : nil
      @total_time.day > 0 ? str.concat("#{@total_time.day} days ") : nil
      @total_time.hour > 0 ? str.concat("#{@total_time.hour}:") : nil
      @total_time.min > 0 ? str.concat("#{@total_time.min}:") : nil
      @total_time.sec > 0 ? str.concat("#{@total_time.sec}") : nil
      str
    else
      'not valid'
    end
  end

  def self.valid?(string)
    REGEX =~ string
  end

end
