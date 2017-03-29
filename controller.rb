require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student')

get '/students' do
  @students = Student.find_all()
  erb(:index)
end

get '/students/new' do
  erb(:new)
end

post '/students' do
  # binding.pry
  @student = Student.new(params)
  @student.save
  erb(:create)
end
