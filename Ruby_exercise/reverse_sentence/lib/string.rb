class String

  REGEX = /[\S]+/ # with \w the string 'hi my email is sawan@vinsol.com' will not give expected result

  def reverse_arrangement_of_words
    scan(REGEX).reverse.join(' ')
  end

end
