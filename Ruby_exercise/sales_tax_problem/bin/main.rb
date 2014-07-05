require_relative '../lib/tax.rb'
a = []

while true
  puts 'Name of the product'
  name_of_product = gets.chomp
  puts 'imported?'
  import = gets.chomp
  puts 'Exempt from sales tax?'
  sales_tax_applies = gets.chomp
  puts 'Price'
  price = gets.chomp.to_i
  a.push(Tax.new(name_of_product, import, sales_tax_applies, price))
  puts 'exit'
  if(gets.chomp == 'q')
    break
  end
end

puts "\n\n"
a.each { |val|
  puts val.to_s
}
puts "\n#{ 'total is'.ljust(50, '*') } #{ a.last.total.to_i } "
