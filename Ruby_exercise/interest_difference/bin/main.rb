require_relative '../lib/interest.rb'

interest = Interest.new do |interest|
  puts 'enter principal'
  interest.principal = gets.chomp.to_f
  puts 'enter time in year'
  interest.time = gets.chomp.to_i
  interest.rate = 10
end

puts "difference is #{ interest.difference }"
