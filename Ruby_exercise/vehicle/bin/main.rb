require_relative '../lib/vehicle.rb'
v=Vehicle.new("sawan",100)
puts v.show_details
b=Bike.new("sawan",100,"competent")
puts b.show_details
b.change_price(200)
puts b.show_details