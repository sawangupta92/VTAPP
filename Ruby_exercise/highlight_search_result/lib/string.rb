class String
  def highlight
    "("+self+")"
  end
  def highlight_count
    regex_to_check = gets.chomp
    gsub(/#{Regexp.quote(regex_to_check)}/i, &:highlight) + "\n" + downcase.count(regex_to_check.downcase).to_s
  end

end
