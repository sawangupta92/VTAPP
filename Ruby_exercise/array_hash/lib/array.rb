class Array

  def hash
    hash_to_check = Hash.new{ |hash, key| hash[key] = [] }

    self.each do |word| 
      word=word.to_s      
      hash_to_check[word.length] << word
    end
    
    hash_to_check
  end

end