require_relative('../db/sql_runner')
class Student
  attr_accessor :first_name, :last_name, :house, :age, :id
  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options['age']
    @id = options['id']
  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house, age ) VALUES
     ('#{@first_name}', '#{@last_name}', '#{@house}', '#{@age}') RETURNING *;"
     student_data = SqlRunner.run(sql)
     @id = student_data.first()['id'].to_i

  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id=#{id};"
    student = SqlRunner.run(sql)
    result = Student.new(student.first)
    return result
  end
end
