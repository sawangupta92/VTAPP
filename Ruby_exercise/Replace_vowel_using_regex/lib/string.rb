class String

  @@regex_to_replace_vowels = /[aeiou]/i
  def replace_vowels_with_star
    self.gsub(@@regex_to_replace_vowels,'*')
  end

end