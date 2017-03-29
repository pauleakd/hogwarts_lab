require_relative('../models/student.rb')
require_relative('../models/house.rb')
require('pry')

Student.delete_all
House.delete_all


gryffindor = House.new({
  "house_name" => "Gryffindor",
  "logo_url" => "http://img09.deviantart.net/56b5/i/2011/255/6/8/gryffindor_crest_by_tuliipiie-d491bqc.jpg"
  })

huffelpuff = House.new({
  "house_name" => "Huffelpuff",
  "logo_url" => "http://media-cache-ec0.pinimg.com/736x/e0/e2/bc/e0e2bca469b63385d89ec2f1250e4ca5.jpg"
  })

slytherin = House.new({
  "house_name" => "Slytherin",
  "logo_url" => "http://i01.i.aliimg.com/wsphoto/v0/760030533/Christmas-gift-Harry-Potter-Slytherin-Logo-Multicolour-Tattoo-For-Body-Art-Painting-Nontoxic-And-Tasteless-Cosplay.jpg"
  })

ravenclaw = House.new({
  "house_name" => "Ravenclaw",
  "logo_url" => "http://img04.deviantart.net/4244/i/2005/309/3/f/ravenclaw_by_chickenslavedriver.jpg"
  })

  gryffindor.save
  slytherin.save
  huffelpuff.save
  ravenclaw.save

student1 = Student.new({
  'first_name' => "Harry",
  'last_name' => "Potter",
  'house_id' => gryffindor.id,
  'age' => 15
  })

  student2 = Student.new({
    'first_name' => "Ron",
    'last_name' => "Weasley",
    'house_id' => gryffindor.id,
    'age' => 15
    })

    student3 = Student.new({
      'first_name' => "Draco",
      'last_name' => "Malfoy",
      'house_id' => slytherin.id,
      'age' => 16
      })


  student1.save
  student2.save
  student3.save





  binding.pry
  nil
