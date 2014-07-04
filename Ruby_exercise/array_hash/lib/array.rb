class Array

  def group_by_length
    hash_to_check = Hash.new { |hash, key| hash[key] = [] }
    each { |word| hash_to_check[word.to_s.length] << word }
    hash_to_check
  end

end
