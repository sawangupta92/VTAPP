require_relative '../lib/customer'

puts 'enter name to add account'
customer = Customer.new(gets.chomp)
puts customer
puts 'enter amount to withdraw'
puts customer.withdraw(gets.chomp)
puts customer
puts 'enter amount to deposit'
puts customer.deposit(gets.chomp)
puts customer
