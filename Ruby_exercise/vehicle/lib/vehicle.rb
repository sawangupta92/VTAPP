class Vehicle

  attr_reader :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def show_details
    [@name, @price].to_s
  end

  def change_price(new_price)
    @price = new_price
  end

end