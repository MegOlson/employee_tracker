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
  @projects = Project.all
  @departments = Department.all
  erb(:index)
end

post('/department') do
  dep_name = params["dep_name"]
  if !dep_name.empty?
    department = Department.new({:name => dep_name})
    department.save
  end
  @departments = Department.all
  @projects = Project.all
  erb(:index)
end

post('/project') do
  project_name = params["project_name"]
  if !project_name.empty?
    project = Project.new({:name => project_name})
    project.save
  end
  @projects = Project.all
  @departments = Department.all
  redirect "/"
end

get('/departments/:id') do
  @employees = Employee.all
  @department = Department.find(params[:id])
  erb(:departments)
end

post('/employee') do
  @department = Department.find(params['dep_id'].to_i)
  employee_name = params['name']
  employee = Employee.new({name: employee_name})
  employee.save
  @employees = Employee.all
  erb(:departments)
end

patch('/departments/:id/edit') do
  department = Department.find(params[:id])
  department.update({name: params["dep_name"]})
  redirect "/"
end

delete('/departments/:id/delete') do
  department = Department.find(params[:id])
  department.delete
  redirect "/"
end
