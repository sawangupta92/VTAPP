class Customer

  @account_number = 0
  @@index_of_account_number = 0
  def initialize(name)
    @name = name
    @balance = 1000
    @@index_of_account_number += 1
    @account_number = @@index_of_account_number
  end

  def show_customer_info
    [@name, @balance, @account_number].to_s
  end

  def deposit(balance)

    if(balance >= 1)
      @balance += balance
    else
      yield
    end

  end

  def withdrawal(balance)

    if(balance <= @balance)
      @balance -= balance
    else
      yield
    end

  end

end