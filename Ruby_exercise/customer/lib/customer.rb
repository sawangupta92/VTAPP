class Customer

  @@account_number = 0
  
  def initialize(name)
    @name = name
    @balance = 1000
    @@account_number += 1
  end
  
  def print_info
    return @name, @balance, @@account_number
  end
  
  def add_account
    initialize(gets.chomp)
  end

  def deposit(balance)
    @balance += balance
  end

  def withdrawal(balance)
    @balance -= balance
  end

end