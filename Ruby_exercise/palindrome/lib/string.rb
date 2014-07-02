class String

  def check_palindrome?
      regex_to_check_palindrome = /[\w]/
      string_to_check = downcase.scan(regex_to_check_palindrome)
      string_to_check.first(string_to_check.length / 2).eql? string_to_check.last(string_to_check.length / 2).reverse
  end

end