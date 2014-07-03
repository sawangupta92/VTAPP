class String

  Regex = /[\S]+/
  
  def reverse_word
    scan(Regex).reverse.join(' ')
  end

end