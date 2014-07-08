require_relative '../lib/vehicle.rb'

class Bike < Vehicle

  def initialize(dealer_name, name, price)
    super(name, price)
    @dealer_name = dealer_name
  end

  def to_s
    "dealer name is #{ @dealer_name }, " + super
  end

end
