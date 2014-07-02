class Factorial

  def calculate(operand)

    if operand == 0
      1
    else
      (1..operand).inject(:*)
    end

  end

end