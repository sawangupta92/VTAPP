require_relative '../lib/item.rb'

cart = ShoppingCart.new()

cart.add_item do |message|
  puts message
  gets.chomp
end

cart.generate_bill do |i|
  puts i
end
