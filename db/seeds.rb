require_relative('../models/student.rb')
require('pry')

student1 = Student.new({
  'first_name' => "Harry",
  'last_name' => "Potter",
  'house' => "Gryffindor",
  'age' => 15
  })

  student2 = Student.new({
    'first_name' => "Ron",
    'last_name' => "Weasley",
    'house' => "Gryffindor",
    'age' => 15
    })

    student3 = Student.new({
      'first_name' => "Draco",
      'last_name' => "Malfoy",
      'house' => "Slytherin",
      'age' => 16
      })

  student1.save
  student2.save
  student3.save

  binding.pry
  nil
