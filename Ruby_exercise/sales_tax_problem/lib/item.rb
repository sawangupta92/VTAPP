class Item

  attr_accessor :name, :imported, :sales_tax_exempted, :price

  def to_s
    "#{ @name.ljust(50, '*') } #{ @price }"
  end

  def calculate_price
    @price + calculate_sales_tax + calculate_import_tax
  end

  def calculate_import_tax
    @imported ? @price * 0.1 : @price
  end
  def calculate_sales_tax
    @sales_tax_exempted ? @price * 0.05 : @price
  end

end
