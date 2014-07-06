class Fixnum

  def factorial
    begin
      raise ArgumentError.new if self < 0
    rescue ArgumentError
      puts "This is not allowed"
    end
    if self == 0
      1
    elsif self > 0
      (1..self).inject(:*)
    end
  end

end
