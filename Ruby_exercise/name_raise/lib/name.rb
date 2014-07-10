require_relative 'null_argument.rb'
require_relative 'capitalize_error.rb'

class Name

  def valid?(name)
    name.nil? or name == false or name.length == 0
  end

  def initialize(firstname, lastname)
    raise NullArgument, 'This is not allowed' if valid?(firstname)
    raise NullArgument, 'This is not allowed' if valid?(lastname)
    raise CapitalizeError, 'first letter of first name is not capital' if firstname[0] != firstname[0].capitalize_error
    @firstname = firstname
    @lastname = lastname
  end

end
