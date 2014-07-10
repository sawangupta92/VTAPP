require_relative 'item'

class ShoppingCart

  def initialize
    @total_price = 0
    @items = []
  end

  def to_s
    "\n#{ 'total'.ljust(50, '*') } #{ @total_price } "
  end

  def add_item
    while true
      item = Item.new
      item.name = yield 'Name of the product'
      item.imported = (yield 'enter y if imported else enter any other key') == 'y' ? true : false
      item.sales_tax_exempted = (yield 'enter y if Exempt from sales tax else enter any other key') == 'y' ? true : false
      item.price = (yield 'enter Price').to_i
      @items.push(item)
      decision = yield 'enter q to exit else enter any other key'
      if(decision == 'q')
        break
      end
    end
  end

  def generate_bill
    @items.each do |item|
      @total_price += item.calculate_price
      yield item
    end
    yield self
  end

end
