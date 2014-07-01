require_relative '../lib/customer.rb'

puts "enter name to add account"

object_customer = Customer.new(gets.chomp)
decision='y'

while (decision != 'q' && decision != 'Q')
  puts "enter 1 to check account 2 to withdrawal 3 to deposit and 4 to add account q/Q to exit"
  decision = gets.chomp

  case decision
  when '1'
    puts object_customer.print_info
  when '2'
    puts "enter amount"
    object_customer.withdrawal(gets.chomp.to_i)
  when '3'
    puts "enter amount"
    object_customer.deposit(gets.chomp.to_i)
  when '4'
    puts "Enter name of account holder"
    object_customer.add_account
  else
    puts "try again"
  end

end