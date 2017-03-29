class Student
  attr_accessor :first_name, :last_name, :house, :age
  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options['age']
  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house, age ) VALUES
     ('#{@first_name}', '#{@last_name}', '#{@house}', '#{@age}') RETURNING *;"
     student_data = SqlRunner.run(sql)
     @id = student_data.first()['id'].to_i

  end
end
