require_relative '../lib/fibonacci.rb'

fibonacci = Fibonacci.new
puts 'Fibonacci series upto thousand is'
puts fibonacci.series { |operand1, operand2| operand1, operand2 = operand2, operand1 + operand2 }