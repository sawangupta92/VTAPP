require_relative '../lib/bike.rb'

vehicle = Vehicle.new('honda', 1000)
puts vehicle
bike = Bike.new('competent', 'honda', 1000)
puts bike
bike.price = 2000
puts bike
