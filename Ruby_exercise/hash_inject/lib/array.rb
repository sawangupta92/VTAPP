class Array

  def group_by_length
    hash_to_check = Hash.new { |hash, key| hash[key] = [] }
    each do |word|
      hash_to_check[word.to_s.length] << word
    end
    hash_to_check
  end
 
  def group_into_odd_even
    result=Hash.new { |hash, key| hash[key] = [] }
    group_by_length.inject({}) { |mem, (var1,var2)|
      result['odd']<<var2 if var1.odd?
      result['even']<<var2 if var1.even?
    }
    result
  end

end