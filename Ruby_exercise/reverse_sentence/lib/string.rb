class String

  def reverse_word
    scan(/[\w]+/).reverse.join(' ')
  end

end