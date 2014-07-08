class String
  REGEX=/(can)/i

  def highlight_count()
    "#{gsub( REGEX, '(\1)')}\ntotal occurences found #{scan(REGEX).length}"
  end

end
