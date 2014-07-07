class CsvData

  def initialize(name,empid)
    @name = name
    @empid = empid
  end

  def to_s
    "#{@name} (EmpId: #{@empid}) "
  end

end
