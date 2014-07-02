class String

  def highlight
    regex_to_check = gets.chomp
    gsub(regex_to_check, "(#{regex_to_check})") + "\n" + count(regex_to_check).to_s
  end

end
