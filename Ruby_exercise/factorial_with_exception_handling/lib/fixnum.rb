require_relative 'negative_integer_error.rb'

class Fixnum

  def factorial
    if self == 0
      1
    elsif self > 0
      (1..self).inject(:*)
    end
  end

end
