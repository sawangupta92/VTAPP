require_relative '../lib/fibonacci.rb'
fibonacci_object = Fibonacci.new
fibonacci_object.fibonacci_series{ |operand1,operand2| operand1,operand2 = operand2, operand1 + operand2 }