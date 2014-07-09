class Interest
  attr_accessor :principal, :time, :rate

  def initialize
    raise ArgumentError.new "No block given" if !block_given?
    yield self
  end

  def calculate_simple
    @principal * @time * @rate / 100.0
  end

  def calculate_simple_amount
    @principal + calculate_simple
  end

  def calculate_compound_amount
    principal * (1 + rate / 100.0) ** time
  end

  def difference
    calculate_compound_amount - calculate_simple_amount
  end

end
