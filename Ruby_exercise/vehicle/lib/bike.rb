require_relative '../lib/vehicle.rb'

class Bike<Vehicle

  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def show_details
    [@name, @price, @dealer].to_s
  end

end