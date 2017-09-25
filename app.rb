require("sinatra")
require("sinatra/reloader")
require("sinatra/activerecord")
also_reload("lib/**/*.rb")
require("./lib/employee")
require("./lib/department")
require("./lib/project")
require("pg")
require("pry")


get('/') do
  @departments = Department.all
  erb(:index)
end

post('/') do
  dep_name = params["dep_name"]
  department = Department.new({:name => dep_name})
  department.save
  @departments = Department.all
  erb(:index)
end
