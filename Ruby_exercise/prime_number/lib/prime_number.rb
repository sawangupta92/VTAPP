require 'prime'

class PrimeNumbers

  def find_prime_numbers(p)
    prime_numbers = []
    1.step(p) do |number|
      prime_numbers.push(number) if Prime.prime?(number)
    end
    prime_numbers
  end

end