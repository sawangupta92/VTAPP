class String

  def count_character_by_type
    lower_case, uper_case, digits, special_case = 0, 0, 0, 0

    each_char do |character|

      if('a'..'z').include? character
        lower_case += 1

      elsif('A'..'Z').include? character
        uper_case += 1
      
      elsif('0'..'9').include? character
        digits += 1

      else
        special_case += 1
      end 

    end

    [lower_case, uper_case, digits, special_case].to_s
  end

end