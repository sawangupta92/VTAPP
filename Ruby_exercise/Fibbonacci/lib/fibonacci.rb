class Fibonacci

  def fibonacci_series()
    operand1,operand2 = 0,1
    result = [0]
    puts "Fibonacci series upto thousand is"

    while operand2 < 1000
      operand1,operand2 = yield operand1, operand2
    result.push(operand1)
    end
    
    result
  end

end