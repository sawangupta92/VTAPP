class String
  def highlight_and_count_serach_key(regex)
    "#{ gsub( regex, '(\1)')}\ntotal occurences found #{scan(regex).length }"
  end

end
