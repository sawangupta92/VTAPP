require_relative '../lib/fixnum.rb'

begin
  puts 3.factorial
rescue ArgumentError
  puts "sorry negative numbers not allowed"
end
