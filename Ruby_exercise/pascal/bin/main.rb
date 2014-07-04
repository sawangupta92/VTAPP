require_relative '../lib/pascal_triangle.rb'

p = Pascal_triangle.new

p.pascal(5) do |val|
  arr=[] 
  0.upto(val) { |k| arr.push(val.factorial/((k.factorial)*((val-k).factorial))) }
  p arr.join(' ')
end
