class Customer
  @@account_number=0
  def initialize(name)
    @name=name
    @balance=1000
    @@account_number+=1
  end
  def print_info
    puts "#{@name} #{@balance} #{@@account_number}"
    add_account
  end
  def add_account
    puts "Enter q or Q to exit else press any other key to continue"
    decision=gets.chomp
    if (decision != 'q' and decision != 'Q')
      puts "Enter name of account holder"
      initialize(gets.chomp)
      print_info
    else
      return 0
    end
  end
end