require 'time'

class Time
  REGEX = /^([0-1]\d|[2][0-3])[:][0-5]\d[:][0-5]\d$/
  REFERENCE_TIME = Time.parse('0000-01-01 00:00:00 -00:00')

  def self.sum(*stringified_times)
    if valid?(*stringified_times)
      total_time = string_to_time('00:00:00')
      stringified_times.each do |time_string|
        time = string_to_time(time_string)
        total_time += (REFERENCE_TIME - time).abs
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

  def self.valid?(*stringified_times)
    stringified_times.all? { |time_string| REGEX =~ time_string }
  end

  def self.display(time)
    str = ''
    time.year > 0 ? str.concat("#{ time.year } years ") : nil
    time.month > 1 ? str.concat("#{ time.month - 1 } months ") : nil
    time.day > 1 ? str.concat("#{ time.day - 1 } days ") : nil
    str.concat("#{ time.hour }:").concat("#{ time.min }:").concat("#{ time.sec }")
  end

end
