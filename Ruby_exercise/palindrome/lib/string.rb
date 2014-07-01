class String

  def check_more_string?
    puts "Enter q or Q to exit else press any other key to continue"
    decision=gets.chomp
  
    if(decision != 'q' and decision != 'Q')
      check_palindrome?
    else
      0
    end
  end
  
  def check_palindrome?
      puts "Enter a string"
      regex_to_check_palindrome = /[\w]/
      string_to_check = gets.downcase.scan(regex_to_check_palindrome)
      puts "#{ string_to_check.first(string_to_check.length / 2).eql?string_to_check.last(string_to_check.length / 2).reverse }"
      check_more_string? 
  
  end

end