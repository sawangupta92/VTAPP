class String

  def to_array # breaks a given string into array representing alphabets only
    downcase.scan(/[a-z]/)
  end

  def alphabets_hash # returns number of alphabets in a given string
    alphabets_count = Hash.new(0)
    to_array.each { |alphabet| alphabets_count[alphabet] += 1 }
    alphabets_count
  end

end