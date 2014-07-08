class String
  REGEX=/(can)/i

  def highlight_count()
    gsub( REGEX, '(\1)')
  end

end
