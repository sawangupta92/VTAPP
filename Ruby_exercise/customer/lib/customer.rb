class Customer

  @@count = 0

  def initialize(name)
    @name = name
    @balance = 1000.0
    @@count += 1
    @account_number = @@count
  end

  def to_s
    "name is #{ @name }, balance is #{ @balance }, account number is #{ @account_number }"
  end

  def deposit(balance) # minimum balance you can add in your account is 1 rupee
    balance = balance.to_f
    if(balance >= 1)
      @balance += balance
    else
      'minimum balance you can add in your account is 1 rupee'
    end
  end

  def withdraw(balance) # you can not withdraw more amount than in your account
    balance = balance.to_f
    if(balance <= @balance)
      @balance -= balance
    else
      'you can not withdraw more amount than in your account'
    end
  end

end
