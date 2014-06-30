class String

  def replace_vowels_with_star
    self.gsub(/([aeiou]|[AEIOU])/,'*')
  end
end