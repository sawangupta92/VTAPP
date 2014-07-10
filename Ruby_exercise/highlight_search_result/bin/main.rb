require_relative '../lib/string.rb'

puts 'Enter string'
puts gets.chomp.highlight_and_count_search(/(can)/i)
