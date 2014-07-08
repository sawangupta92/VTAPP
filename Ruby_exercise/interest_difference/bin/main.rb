require_relative '../lib/interest.rb'

interest = Interest.new do |interest|
  puts 'enter principle'
  interest.principle = gets.chomp.to_f
  puts 'enter time in year'
  interest.time = gets.chomp.to_i
  interest.rate = 10
end

puts "difference is #{ interest.difference }"
