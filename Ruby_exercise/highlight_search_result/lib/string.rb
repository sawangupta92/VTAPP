class String
  def highlight_and_count_search(regex)
    "#{ gsub( regex, '(\1)')}\ntotal occurences found #{scan(regex).length }"
  end

end
