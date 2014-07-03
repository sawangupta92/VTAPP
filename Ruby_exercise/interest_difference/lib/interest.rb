class Interest

  attr_accessor :principle, :time, :rate

  def simple
    principle+principle*time*rate/100.0
  end

  def compound
    principle*((1+rate/100.0)**time)
  end

  def difference
    compound-simple
  end

end