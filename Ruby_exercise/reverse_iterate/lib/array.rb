class Array

  def reverse_iterate
    index = length
    while index > 0
      index -= 1
      yield self[index]
    end
  end
end
