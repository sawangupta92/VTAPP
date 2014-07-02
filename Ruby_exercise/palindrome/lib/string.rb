class String

  Regex_to_check_palindrome = /[\w]/i
  def palindrome?
    string_to_check = downcase.scan(Regex_to_check_palindrome)
    string_to_check.eql? string_to_check.reverse
  end

end