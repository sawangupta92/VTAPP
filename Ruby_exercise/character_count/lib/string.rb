class String

  def count_character_by_type
    hash_with_count=Hash.new(0)

    each_char do |character|

      if('a'..'z').include? character

        hash_with_count['lower_case'] += 1

      elsif('A'..'Z').include? character
        hash_with_count['upper_case'] += 1

      elsif('0'..'9').include? character
        hash_with_count['digits'] += 1

      else
        hash_with_count['special_case'] += 1
      end 

    end

    hash_with_count.to_s
  end

end