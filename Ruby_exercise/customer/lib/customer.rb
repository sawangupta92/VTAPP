class Customer

  @@index_of_account_number = 0
  def initialize(name)
    @name = name
    @balance = 1000
    @@index_of_account_number += 1
    @account_number = @@index_of_account_number
  end

  def to_s
    "name is #{ @name }, balance is #{ @balance }, account number is #{ @account_number }"
  end

  def deposit(balance) # minimum balance you can add in your account is 1 rupee
    if(balance >= 1)
      @balance += balance
    else
      "you can not do this"
    end
  end

  def withdrawal(balance) # you can not withdraw more amount than in your account
    if(balance <= @balance)
      @balance -= balance
    else
      "you can not do this"
    end
  end

end
