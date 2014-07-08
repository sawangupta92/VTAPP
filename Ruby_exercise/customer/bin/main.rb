require_relative '../lib/customer'

puts 'enter name to add account'
customer = Customer.new(gets.chomp)
puts customer
puts 'enter amount to withdraw'
customer.withdrawal(gets.chomp)
puts customer
puts 'enter amount to deposit'
customer.deposit(gets.chomp)
puts customer
