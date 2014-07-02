class Array

  def power(power_operand)
    result_array = []
    each { |input_array| result_array.push(input_array**power_operand) }
    result_array
  end

end