require_relative 'negative_integer_error.rb'

class Fixnum

  def factorial
    begin
      raise NegativeIntegerError.new if self < 0
    rescue NegativeIntegerError
      puts "This is not allowed"
    end
    if self == 0
      1
    elsif self > 0
      (1..self).inject(:*)
    end
  end

end
