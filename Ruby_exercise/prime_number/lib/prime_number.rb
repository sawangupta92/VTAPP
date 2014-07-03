require 'prime'

class Fixnum

  def prime_numbers()
    prime_numbers = []
    1.step(self) do |number|
      prime_numbers.push(number) if Prime.prime?(number)
    end
    prime_numbers
  end

end