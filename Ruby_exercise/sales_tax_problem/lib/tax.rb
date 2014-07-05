class Tax
  attr_accessor :total
  @@total = 0

  def initialize(item, imported, sales_tax, price)
    @item = item
    @isimp = imported
    @sales_tax = sales_tax
    @price = price
  end

  def is_imported?(isimp)
    isimp == 'yes'
  end

  def is_exempted_from_sales_tax?(sales_tax)
    sales_tax == 'yes'
  end

  def to_s
    calculte_tax
    grand_total
    "#{ @item.ljust(50, '*') } #{ @price }"
  end

  def grand_total
    @@total += @price
    @total = @@total
  end

  private

  def calculte_tax
    if is_imported?(@isimp)
      @price *= 1.05
    end
    if !is_exempted_from_sales_tax?(@sales_tax)
      @price *= 1.1
    end

  end

end
