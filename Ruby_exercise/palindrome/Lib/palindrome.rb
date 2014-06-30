class Palindrome
  def check_palindrome
    begin
      puts "Enter a string"
      string_to_check=gets
      puts "#{string_to_check.downcase.scan(/[\w]/).first(string_to_check.length/2).eql?string_to_check.downcase.scan(/[\w]/).last(string_to_check.length/2).reverse}"
      puts "Enter q or Q to exit else press any other key to continue"
      decision=gets.chomp
    end while (decision!='q' && decision!='Q')
  end
end