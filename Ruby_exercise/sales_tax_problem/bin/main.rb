require_relative '../lib/tax.rb'

a = []
cart = ShoppingCart.new()

while true
  puts 'Name of the product'
  name_of_product = gets.chomp
  puts 'enter y if imported else enter any other key'
  import = gets.chomp == 'y'?true:false
  puts 'enter y if Exempt from sales tax else enter any other key'
  sales_tax_applies = gets.chomp == 'y'?true:false
  puts 'enter Price'
  price = gets.chomp.to_i
  a.push(tax=Tax.new(name_of_product, import, sales_tax_applies, price, cart))
  tax.calculate
  puts 'enter q to exit else enter any other key'
  if(gets.chomp == 'q')
    break
  end
end

puts "\n\n"
a.each { |val|
  puts val.to_s
}
puts "\n#{ 'total'.ljust(50, '*') } #{ cart.total_price.to_i } "
