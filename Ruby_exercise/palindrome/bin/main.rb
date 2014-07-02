require_relative '../lib/string.rb'

palindromeobject = String.new
decision = 'y'

while(!decision.match(/[q]/i))
  puts 'Enter a string'
  p gets.chomp.check_palindrome?
  puts 'Enter q/Q to exit'
  decision = gets.chomp

  if decision == /[q]/i
    p 'exit'
  end

end

puts palindromeobject.check_palindrome?