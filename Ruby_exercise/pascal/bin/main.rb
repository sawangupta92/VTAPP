require_relative '../lib/pascal_triangle.rb'

pascal = Pascal.new

pascal.series(5) { |val| puts val }
