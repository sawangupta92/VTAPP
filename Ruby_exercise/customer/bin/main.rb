require_relative '../lib/customer.rb'
puts "Enter name of account holder"
object_customer=Customer.new(gets.chomp)
object_customer.print_info