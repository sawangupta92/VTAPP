class Fibonacci
  def fibonacci_series()
    operand1,operand2=0,1
    puts "Fibonacci series upto thousand is"
    while operand2<1000
      puts operand2
      operand1,operand2=yield operand1, operand2
    end
  end
end