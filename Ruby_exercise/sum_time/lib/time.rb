require 'time'

class Time
  REGEX = /^([0-1]\d|[2][0-3])[:][0-5]\d[:][0-5]\d$/

  def self.sum(*string_time)
    if valid?(*string_time)
      temp_total_time = total_time = string_to_time('00:00:00')
      string_time.each do |temp_time|
        temp_time = string_to_time(temp_time)
        total_time += (temp_total_time - temp_time).abs
      end
      display(total_time)
    else
      'not valid'
    end
  end

  private

  def self.string_to_time(string)
    Time.parse("0000-01-01 #{ string } -00:00")
  end

  def self.valid?(*strings)
    strings.all? { |temp_time| REGEX =~ temp_time.to_s }
  end

  def self.display(total_time)
    str = ''
    total_time.year > 0 ? str.concat("#{ total_time.year } years ") : nil
    total_time.month > 1 ? str.concat("#{ total_time.month - 1 } months ") : nil
    total_time.day > 1 ? str.concat("#{ total_time.day - 1 } days ") : nil
    str.concat("#{ total_time.hour }:").concat("#{ total_time.min }:").concat("#{ total_time.sec }")
  end

end
