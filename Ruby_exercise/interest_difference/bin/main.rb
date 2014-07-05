require_relative '../lib/interest.rb'

interest=Interest.new.tap do |interest|
  p 'enter principle'
  interest.principle = gets.chomp.to_i
  p 'enter time in year'
  interest.time = gets.chomp.to_i
  interest.rate = 10
end

puts "difference is #{interest.difference}"