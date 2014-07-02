require_relative '../lib/string.rb'

string = 'y'

while(!string.match(/^[q]$/i))
  puts 'Enter a string or Enter q/Q to exit'
  string = gets.chomp

  if string != /^[q]$/i
    p string.palindrome?
  end

end