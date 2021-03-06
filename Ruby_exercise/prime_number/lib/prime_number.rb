require_relative 'fixnum.rb'

class Prime_number

  def initialize(limit)
    @limit = limit
  end

  def generate_prime_numbers
    prime_numbers = []
    1.step(@limit) do |number|
      prime_numbers.push(number) if number.prime?
    end
    prime_numbers
  end

end
