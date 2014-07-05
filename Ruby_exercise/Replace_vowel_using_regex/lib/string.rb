class String

  Regex_to_replace_vowels = /[aeiou]/i

  def replace_vowels_with_star
    gsub(Regex_to_replace_vowels, '*')
  end

end
