require_relative 'null_argument.rb'

class Name

  def initialize(firstname, lastname)
    begin
      raise NullArgument.new if lastname.length == 0
    rescue NullArgument
      puts "This is not allowed"
    end
    @firstname = firstname
    @lastname = lastname
  end

end
