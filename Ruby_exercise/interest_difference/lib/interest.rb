class Interest

  attr_accessor :principle, :time, :rate

  def initialize
    raise ArgumentError.new "No block given" if !block_given?
    yield self
  end

  def calculate_simple
    principle * time * rate / 100.0
  end

  def calculate_simple_amount
    principle + calculate_simple
  end

  def compound
    (1 + rate / 100.0) ** time
  end

  def calculate_compound_amount
    principle * compound
  end

  def difference
    calculate_compound_amount - calculate_simple_amount
  end

end
