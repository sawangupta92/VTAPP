class Vehicle
  attr_writer :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    'name of vehicle is #{ @name }, price of vehicle is #{ @price }'
  end

end
