require_relative '../lib/fixnum.rb'

a=3
begin
  raise NegativeIntegerError.new if (!a.integer? or a < 0)
  puts a.factorial
rescue NegativeIntegerError
  puts "This is not allowed"
end
