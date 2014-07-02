require_relative '../lib/customer.rb'

puts 'enter name to add account'

customer = Customer.new(gets.chomp)
decision = 'y'

while(!decision.match(/[q]/i))
  puts 'enter 1 to check account 2 to withdrawal 3 to deposit and 4 to add account q/Q to exit'
  decision = gets.chomp

  case decision
  when '1'
    puts customer.print_info
  when '2'
    puts 'enter amount'
    customer.withdrawal(gets.chomp.to_i) {puts 'you cannot do this'}
  when '3'
    puts 'enter amount'
    customer.deposit(gets.chomp.to_i)
  when '4'
    puts 'Enter name of account holder'
    customer = Customer.new(gets.chomp)
  when /[q]/i
  else
    puts 'try again'
  end

end