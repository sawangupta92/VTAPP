require_relative 'item'

class ShoppingCart

  def initialize
    @total_price = 0
  end

  def to_s
    "\n#{ 'total'.ljust(50, '*') } #{ @total_price } "
  end

  def add_item
    @item = []
    while true
      name_of_product = yield 'Name of the product'
      import = (yield 'enter y if imported else enter any other key') == 'y' ? true : false
      sales_tax_applies = (yield 'enter y if Exempt from sales tax else enter any other key') == 'y' ? true : false
      price = (yield 'enter Price').to_i
      @item.push(item = Item.new(name_of_product, import, sales_tax_applies, price))
      decision = yield 'enter q to exit else enter any other key'
      if(decision == 'q')
        break
      end
    end
  end

  def generate_bill
    @item.each do |item|
      @total_price += item.add_tax
      yield item
    end
    yield self
  end

end
