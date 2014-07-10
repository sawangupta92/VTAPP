require_relative 'null_argument.rb'
require_relative 'capitalize_error.rb'

class Name

  def valid?(name)
    name.kind_of?(String) and name.empty?
  end

  def initialize(firstname, lastname)
    raise NullArgument, 'This is not allowed' if valid?(firstname)
    raise NullArgument, 'This is not allowed' if valid?(lastname)
    raise FirstLetterCaseError, 'first letter of first name is not capital' if firstname[0] != firstname[0].capitalize
    @firstname = firstname
    @lastname = lastname
  end

end
