require_relative '../lib/customer.rb'

puts 'enter name to add account'
customer = Customer.new(gets.chomp)
puts customer
puts 'enter amount to withdraw'
puts customer.withdrawal(gets.chomp.to_i)
puts 'enter amount to deposit'
puts customer.deposit(gets.chomp.to_i)
