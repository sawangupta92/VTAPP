require_relative '../lib/item.rb'

array_of_objects = []
cart = ShoppingCart.new()

while true
  puts 'Name of the product'
  name_of_product = gets.chomp
  puts 'enter y if imported else enter any other key'
  import = gets.chomp == 'y' ? true : false
  puts 'enter y if Exempt from sales tax else enter any other key'
  sales_tax_applies = gets.chomp == 'y' ? true : false
  puts 'enter Price'
  price = gets.chomp.to_i
  array_of_objects.push(item = Item.new(name_of_product, import, sales_tax_applies, price))
  cart.total_price += item.add_tax
  puts 'enter q to exit else enter any other key'
  if(gets.chomp == 'q')
    break
  end
end

puts "\n\n"
array_of_objects.each { |val|
  puts val.to_s
}
puts "\n#{ 'total'.ljust(50, '*') } #{ cart.total_price.to_i } "
