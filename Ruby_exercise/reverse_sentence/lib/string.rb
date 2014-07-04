class String

  Regex = /[\S]+/

  def reverse_arrangement_of_words
    scan(Regex).reverse.join(' ')
  end

end
