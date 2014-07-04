class Fixnum

  def factorial
    if self == 0
      1
    elsif self > 0
      (1..self).inject(:*)
    else
      'Wrong input negative value'
    end
  end

end
