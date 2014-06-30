require_relative '../lib/vehicle.rb'
v=Vehicle.new("sawan",100)
v.show_details
b=Bike.new("sawan",100,"competent")
b.show_details
b.change_price(200)
b.show_details