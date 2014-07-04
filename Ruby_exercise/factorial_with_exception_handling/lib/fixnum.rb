class Fixnum

  def factorial
    raise ArgumentError  if self<0
    if self == 0
      1
    elsif self > 0
      (1..self).inject(:*)
    end
  end

end
