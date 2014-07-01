require_relative '../lib/fibonacci.rb'

fibonacci_object = Fibonacci.new
puts fibonacci_object.fibonacci_series { |operand1,operand2| operand1,operand2 = operand2, operand1 + operand2 }