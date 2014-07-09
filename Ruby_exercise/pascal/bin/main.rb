require_relative '../lib/pascal_triangle'

pascal = Pascal.new

pascal.series(5) { |val| puts val }
