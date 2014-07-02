class Fibonacci

  def series
    number1, number2 = 0, 1
    result = [0]

    while number2 < 1000
      number1, number2 = yield number1, number2
    result.push(number1)
    end

    result
  end

end