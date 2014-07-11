require_relative 'null_argument'
require_relative 'case_error'

class Name

  def valid?(name)
    name.kind_of?(String) and !name.empty?
  end

  def initialize(firstname, lastname)
    raise NullArgument, 'first name not given' unless valid?(firstname)
    raise CaseError, 'first letter of first name is not capital' unless firstname[0] == firstname[0].capitalize
    raise NullArgument, 'last name not given' unless valid?(lastname)
    @firstname = firstname
    @lastname = lastname
  end

end
