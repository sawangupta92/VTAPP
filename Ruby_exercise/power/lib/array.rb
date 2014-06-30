class Array

  def power(power_operand)
    self.each{ |input_array| puts input_array**power_operand }   
  end
end

class Convert_string
  
  def convert_string_to_array
    puts "enter array"
    array = []

    gets.chomp.each_char do |input_array|
      if /\d/.match(input_array)
        array.push(input_array.to_i)
      end
    end

    puts "enter power"
    return array
  end
end