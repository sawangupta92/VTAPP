class String

  def to_array # breaks a given string into array representing alphabets only
    self.downcase.scan(/[a-z]/)
  end

  def alphabets_hash # returns number of alphabets in a given string
    number_of_alphabets_in_string = Hash.new(0)
    self.to_array.each { |alphabet| number_of_alphabets_in_string[alphabet] += 1 }
    return number_of_alphabets_in_string
  end
end