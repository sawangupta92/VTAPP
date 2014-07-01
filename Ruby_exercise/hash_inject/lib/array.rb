class Array
  
  def add_into_hash(even,odd)
    hash_to_check = Hash.new{ |hash, key| hash[key] = [] }
    hash_to_check["odd"] = odd
    hash_to_check["even"] =even
    hash_to_check
  end
  
  def group_array_into_odd_even
    even= Hash.new{ |hash, key| hash[key] = [] }
    odd=Hash.new{ |hash, key| hash[key] = [] }
   
    self.each do |word| 
      word=word.to_s
      if word.length.even?
        even[word.length] << word
      else
        odd[word.length] << word
      end
   
    end
    puts add_into_hash(even,odd)

  end

end
['abc','def',1234,'234','abcd','x','mnop','5','zZzZ'].group_array_into_odd_even