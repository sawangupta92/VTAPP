class String

  Regex=/[\w]+/
  
  def reverse_word
    scan(Regex).reverse.join(' ')
  end

end