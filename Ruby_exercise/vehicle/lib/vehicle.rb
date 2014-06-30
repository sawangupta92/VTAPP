class Vehicle
  attr_reader :price
  def initialize(name,price)
    @name=name
    @price=price
  end
  def show_details
    puts "name is #{@name} price is #{@price}"
  end
  def change_price(new_price)
    @price=new_price
  end
end
class Bike<Vehicle
  def initialize(name,price,dealer)
    super(name,price)
    @dealer=dealer
  end
  def show_details
    puts "name is #{@name} price is #{@price} and dealer is #{@dealer}"
  end
end
