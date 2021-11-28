require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :password

  @first_name
  @last_name
  @email
  @password
  
  def to_s
    "First name: #{@first_name}\nLast name: #{last_name}\nEmail: #{email}\nPassword: #{password}\n\n"
  end

  def initialize(first_name, last_name, email, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @password = password
  end
end

