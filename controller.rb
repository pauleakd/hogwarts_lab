require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student')
require_relative('./models/house')

get '/students' do
  @students = Student.find_all()
  erb(:index)
end

get '/students/new' do
  @houses = House.find_all
  erb(:new)
end

post '/students' do
  # binding.pry
  @student = Student.new(params)
  @student.save
  erb(:create)
end
