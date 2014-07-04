require_relative 'fixnum.rb'

class PascalTriangle

  def pascal(val)
    0.upto(val) { |val|
      yield(val)
    }
  end

end
