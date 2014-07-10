class Item

  def initialize(item, imported, sales_tax, price)
    @item = item
    @imported = imported
    @sales_tax_exempted = sales_tax
    @price = price
  end

  def to_s
    "#{ @item.ljust(50, '*') } #{ @price }"
  end

  def add_tax
    if @imported
      @price *= 1.05
    end
    if @sales_tax_exempted
      @price *= 1.1
    end
    @price
  end

end
