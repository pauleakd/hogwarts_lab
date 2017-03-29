class Student
  attr_accessor :first_name, :last_name, :house, :age
  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options['age']
  end 
end
