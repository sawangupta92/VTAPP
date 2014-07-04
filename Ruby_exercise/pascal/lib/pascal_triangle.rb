require_relative 'fixnum.rb'

class Pascal_triangle

  def pascal(val)
    0.upto(val){ |val|
      yield(val)
    }
  end

end
