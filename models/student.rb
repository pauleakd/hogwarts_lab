require_relative('../db/sql_runner')
class Student
  attr_accessor :first_name, :last_name, :house_id, :age, :id
  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_id = options['house_id'].to_i
    @age = options['age']
    @id = options['id']
  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house_id, age ) VALUES
     ('#{@first_name}', '#{@last_name}', #{@house_id}, '#{@age}') RETURNING *;"
     student_data = SqlRunner.run(sql)
     @id = student_data.first()['id'].to_i

  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id=#{id};"
    student = SqlRunner.run(sql)
    result = Student.new(student.first)
    return result
  end

  def self.find_all
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    return students.map{|student| Student.new(student)}
  end

  def find_house
    sql = "SELECT * FROM houses WHERE id = #{house_id}"
    house = SqlRunner.run(sql)
    return House.new(house.first)
  end

  def self.delete_all
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end

end
