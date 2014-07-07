require_relative 'shopping_cart.rb'

class Tax
  attr_accessor :total

  def initialize(item, imported, sales_tax, price, cart)
    @item = item
    @isimp = imported
    @sales_tax = sales_tax
    @price = price
    @cart = cart
  end

  def is_imported?(isimp)
    isimp == "y"
  end

  def is_exempted_from_sales_tax?(sales_tax)
    sales_tax == "n"
  end

  def to_s
    "#{ @item.ljust(50, '*') } #{ @price }"
  end

  def add_tax
    if is_imported?(@isimp)
      @price *= 1.05
    end
    if is_exempted_from_sales_tax?(@sales_tax)
      @price *= 1.1
    end
  end

  def calculate
    add_tax
    @cart.total_price += @price
  end

end
