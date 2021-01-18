require_relative "crud"

class Student
    include Crud
    attr_accessor :first_name, :last_name, :email, :username, :password
    # attr_reader :username
  
    @first_name
    @last_name
    @email
    @username
    @password
  
    def initialize(firstname, lastname, email, username, password)
      @first_name = firstname
      @last_name = lastname
      @email = email
      @username = username
      @password = password
    end
  
    # setter example
    # def first_name=(name)
    #   @first_name = name
    # end
  
    # getter example
    # def first_name
    #   @first_name
    # end
  
    def to_s
      "First name: #{@first_name}, Last name: #{@last_name}, email: #{@email}, username: #{@username}"
    end
  end
  
  rich = Student.new('Rich', 'Boothe', 'rjb@example.com', 'rb1', 'abc123')
  bob = Student.new('Bob', 'Boothe', 'bobbyb@example.com', 'bb1', '123456')
  puts rich
  puts bob
  
  hashed_password = rich.create_hash_digest(rich.password)
  puts hashed_password