require_relative 'fixnum.rb'

class Pascal

  def series(limit)
    0.upto(limit) do |value|
      arr = []
      0.upto(value) { |number| arr.push(value.factorial / ((number.factorial) * ((value - number).factorial))) }
      yield arr.join(' ')
    end
  end

end
