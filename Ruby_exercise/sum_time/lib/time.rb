require 'date'

class Time

  REGEX_FOR_TIME = /^([0-1]\d|[2][0-3])[:][0-5]\d[:][0-5]\d$/

  def self.sum(*time)
    if time.all? { |temp_time| self.validate?(temp_time.to_s) }
      time = time.map { |temp_time| self.string_to_time(temp_time.to_s) }
      temp_total_time = total_time = self.string_to_time('00:00:00')
      time.map do |temp_time|
        total_time += temp_time.sec + temp_time.min * 60 + temp_time.hour * 3600
      end
      hms_time = "#{ total_time.hour }:" + "#{ total_time.min }:" + "#{ total_time.sec }"
      calculate(total_time,temp_total_time,hms_time)
    else
      'not valid'
    end
  end

  private

  def self.validate?(string)
    REGEX_FOR_TIME =~ string
  end

  def self.string_to_time(string)
    DateTime.parse(string + 'IST').to_time
  end

  def self.days_in_month(year, month)
    Date.new(year, month, -1).day
  end

  def self.calculate_days(total_time,temp_total_time,hms_time)
    days = total_time.day - temp_total_time.day
    if days < 0
      days + days_in_month(total_time.year, total_time.month)
    else
      days
    end
  end

  def self.calculate_months(total_time,temp_total_time,hms_time)
    months = total_time.month - temp_total_time.month
    if months < 0
      months + 12
    else
      months
    end
  end

  def self.calculate(total_time,temp_total_time,hms_time)

    if total_time.year-temp_total_time.year > 0
      "#{total_time.year - temp_total_time.year} year #{total_time.month - temp_total_time.month}  #{ total_time.day - temp_total_time.day } days #{ hms_time }"
    elsif total_time.month > 0
      "#{total_time.month - temp_total_time.month} months  #{ self.calculate_days(total_time,temp_total_time,hms_time) } days #{ hms_time }"
    elsif total_time.day > 0
      "#{self.calculate_days(total_time,temp_total_time,hms_time)} days #{ hms_time }"
    else
      "#{ hms_time }"
    end
  end

end
