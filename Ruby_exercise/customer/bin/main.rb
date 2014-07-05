require_relative '../lib/customer.rb'

puts 'enter name to add account'

customer = Customer.new(gets.chomp)
puts 'enter 1 to check account 2 to withdrawal 3 to deposit and 4 to add account q/Q to exit'
puts customer
puts 'enter amount'
puts customer.withdrawal(gets.chomp.to_i)
puts 'enter amount'
puts customer.deposit(gets.chomp.to_i)
puts 'Enter name of account holder'
customer = Customer.new(gets.chomp)
