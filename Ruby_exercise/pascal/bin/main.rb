require_relative '../lib/pascal_triangle.rb'

series = PascalTriangle.new

series.pascal(5) do |val|
  arr = []
  0.upto(val) { |k| arr.push(val.factorial / ((k.factorial) * ((val - k).factorial))) }
  puts arr.join(' ')
end
