require_relative 'fixnum'

class Pascal

  def series(limit)
    0.upto(limit-1) do |value|
      row=''
      0.upto(value) do |number|
        result = value.factorial / (number.factorial * (value - number).factorial)
        row = row + result.to_s + ' '
      end
      yield row
    end
  end

end
