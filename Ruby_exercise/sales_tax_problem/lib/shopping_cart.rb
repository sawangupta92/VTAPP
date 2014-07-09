class ShoppingCart
  attr_accessor :total_price, :array_of_objects

  def initialize
    @total_price = 0
  end

  def to_s
    "\n#{ 'total'.ljust(50, '*') } #{ @total_price } "
  end

  def add_item
    @array_of_objects = []
    while true
      name_of_product = yield 'Name of the product'
      import = yield 'enter y if imported else enter any other key'
      import = import == 'y' ? true : false
      sales_tax_applies = yield 'enter y if Exempt from sales tax else enter any other key'
      sales_tax_applies = sales_tax_applies == 'y' ? true : false
      price = (yield 'enter Price').to_i
      @array_of_objects.push(item = Item.new(name_of_product, import, sales_tax_applies, price))
      decision = yield 'enter q to exit else enter any other key'
      if(decision == 'q')
        break
      end
    end
  end

  def generate_bill
    @array_of_objects.each do |item|
      @total_price += item.add_tax
      yield item
    end
    yield self
  end

end
