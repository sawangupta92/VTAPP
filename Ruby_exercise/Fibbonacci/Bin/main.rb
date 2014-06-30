require_relative '../Lib/fibonacci.rb'
a=Fibonacci.new
a.fibonacci_series { |operand1,operand2| operand1,operand2=operand2,[operand1,operand2].inject(:+) }