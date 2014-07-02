require_relative '../lib/factorial.rb'

puts 'enter number'
factorial = Factorial.new
puts factorial.calculate(gets.chomp.to_i)