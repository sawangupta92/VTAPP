require_relative 'null_argument.rb'

class Name

  def validate?(name)
    name.nil? or  name == false or name.class != String or name.length == 0
  end

  def initialize(firstname, lastname)
    raise NullArgument, 'This is not allowed' if validate?(firstname) or firstname[0] != firstname[0].capitalize
    raise NullArgument, 'This is not allowed' if validate?(lastname)
    @firstname = firstname
    @lastname = lastname
  end

end
