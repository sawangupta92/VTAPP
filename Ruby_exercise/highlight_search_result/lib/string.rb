class String

  def highlight_and_count_search(regex_string)
    regex = Regexp.new("(#{ regex_string })", 'i')
    "#{ gsub((regex), '(\\1)') }\nTotal occurences found #{ scan(regex).length }"
  end

end
