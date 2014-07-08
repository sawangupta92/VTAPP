require_relative '../lib/bike.rb'

puts Vehicle.new('honda', 1000)
puts bike = Bike.new('competent', 'honda', 1000)
bike.price = 2000
puts bike
